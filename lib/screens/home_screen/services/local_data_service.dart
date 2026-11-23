import 'dart:async';

import 'package:android_dev/core/db/app_database.dart';
import 'package:android_dev/core/db/database_provider.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_model.dart';

/// Local persistence API for posts and profiles. Kept independent of widgets.
class LocalDataService {
  LocalDataService(this._database);

  final AppDatabase _database;
  final _commentChanges = StreamController<String>.broadcast();
  late final Future<void> _commentsTableReady = _database.customStatement('''
    CREATE TABLE IF NOT EXISTS post_comments (
      id TEXT PRIMARY KEY NOT NULL,
      post_id TEXT NOT NULL,
      author_name TEXT NOT NULL,
      body TEXT NOT NULL,
      created_at INTEGER NOT NULL
    )
  ''');

  Stream<List<CachedPost>> watchPosts() {
    final query = _database.select(_database.cachedPosts)
      // IDs include the creation timestamp, so this keeps newest local posts first.
      ..orderBy([(post) => OrderingTerm.desc(post.id)]);
    return query.watch();
  }

  Future<List<CachedPost>> getPosts() => _database.select(_database.cachedPosts).get();

  Future<CachedPost?> getPost(String id) =>
      (_database.select(_database.cachedPosts)..where((post) => post.id.equals(id))).getSingleOrNull();

  Future<void> savePost(CachedPostsCompanion post) =>
      _database.into(_database.cachedPosts).insertOnConflictUpdate(post);

  Future<void> savePosts(List<CachedPostsCompanion> posts) async {
    await _database.batch((batch) => batch.insertAllOnConflictUpdate(_database.cachedPosts, posts));
  }

  Future<void> deletePost(String id) =>
      (_database.delete(_database.cachedPosts)..where((post) => post.id.equals(id))).go();

  Future<void> toggleLike(CachedPost post, String userId) async {
    // Did this user already like this post? Look in the post_likes table.
    final likeQuery = _database.select(_database.postLikes)
      ..where((like) => like.postId.equals(post.id) & like.userId.equals(userId));
    final alreadyLiked = await likeQuery.getSingleOrNull() != null;

    if (alreadyLiked) {
      await (_database.delete(_database.postLikes)
            ..where((like) => like.postId.equals(post.id) & like.userId.equals(userId)))
          .go();
    } else {
      await _database.into(_database.postLikes)
          .insert(PostLikesCompanion.insert(userId: userId, postId: post.id));
    }

    final isLiked = !alreadyLiked;
    await (_database.update(_database.cachedPosts)..where((row) => row.id.equals(post.id))).write(
      CachedPostsCompanion(
        isLiked: Value(isLiked),
        likes: Value(post.likes + (isLiked ? 1 : -1)),
      ),
    );
  }

  Future<UserProfile?> findUserByEmail(String email) =>
      (_database.select(_database.userProfiles)..where((user) => user.email.equals(email)))
          .getSingleOrNull();

  Stream<List<UserProfile>> watchProfiles() => _database.select(_database.userProfiles).watch();

  Future<UserProfile?> getProfile(String id) =>
      (_database.select(_database.userProfiles)..where((profile) => profile.id.equals(id))).getSingleOrNull();

  Future<void> saveProfile(UserProfilesCompanion profile) =>
      _database.into(_database.userProfiles).insertOnConflictUpdate(profile);

  Stream<UserProfile?> watchProfile(String id) =>
      (_database.select(_database.userProfiles)..where((profile) => profile.id.equals(id)))
          .watchSingleOrNull();

  Future<List<CommentModel>> getComments(String postId) async {
    await _commentsTableReady;
    final rows = await _database.customSelect(
      'SELECT id, author_name, body, created_at FROM post_comments WHERE post_id = ? ORDER BY created_at ASC',
      variables: [Variable.withString(postId)],
    ).get();
    return rows
        .map((row) => CommentModel(
              id: row.read<String>('id'),
              authorName: row.read<String>('author_name'),
              body: row.read<String>('body'),
              createdAt: DateTime.fromMillisecondsSinceEpoch(row.read<int>('created_at')),
            ))
        .toList();
  }

  Stream<List<CommentModel>> watchComments(String postId) async* {
    yield await getComments(postId);
    await for (final changedPostId in _commentChanges.stream) {
      if (changedPostId == postId) yield await getComments(postId);
    }
  }

  Future<void> addComment({required String postId, required String authorName, required String body}) async {
    await _commentsTableReady;
    final now = DateTime.now();
    await _database.customStatement(
      'INSERT INTO post_comments (id, post_id, author_name, body, created_at) VALUES (?, ?, ?, ?, ?)',
      [
        Variable.withString('comment-${now.microsecondsSinceEpoch}'),
        Variable.withString(postId),
        Variable.withString(authorName),
        Variable.withString(body),
        Variable.withInt(now.millisecondsSinceEpoch),
      ],
    );
    _commentChanges.add(postId);
  }

  void dispose() => _commentChanges.close();
}

final localDataServiceProvider = Provider<LocalDataService>(
  (ref) {
    final service = LocalDataService(ref.watch(databaseProvider));
    ref.onDispose(service.dispose);
    return service;
  },
);
