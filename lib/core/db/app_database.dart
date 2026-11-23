import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class CachedPosts extends Table {
  TextColumn get id => text()();
  TextColumn get authorId => text()();
  TextColumn get authorName => text()();
  TextColumn get imageUrl => text()();
  TextColumn get caption => text()();
  IntColumn get likes => integer().withDefault(const Constant(0))();
  BoolColumn get isLiked => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get nickname => text()();
  TextColumn get avatarUrl => text().nullable()();
  TextColumn get email => text().unique()();
  TextColumn get password => text()();
  TextColumn get salt => text()();
  

  @override
  Set<Column<Object>> get primaryKey => {id};
  
}

class PostLikes extends Table {
  TextColumn get userId => text().references(UserProfiles, #id)();
  TextColumn get postId => text().references(CachedPosts, #id)();
  

  @override
  Set<Column<Object>> get primaryKey => {userId, postId};

  
}

@DriftDatabase(tables: [CachedPosts, UserProfiles, PostLikes])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'social_app'));

  @override
  int get schemaVersion => 2;
    @override
    MigrationStrategy get migration => MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        if (from<2){
        await m.deleteTable('user_profiles');
        await m.createTable(userProfiles);      // new table
        await m.createTable(postLikes);
        }
     
      },
 beforeOpen: (details) async {
    await customStatement('PRAGMA foreign_keys = ON');
  },
    );
  
  // ÷what is migration?
}
