// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CachedPostsTable extends CachedPosts
    with TableInfo<$CachedPostsTable, CachedPost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedPostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorIdMeta = const VerificationMeta(
    'authorId',
  );
  @override
  late final GeneratedColumn<String> authorId = GeneratedColumn<String>(
    'author_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorNameMeta = const VerificationMeta(
    'authorName',
  );
  @override
  late final GeneratedColumn<String> authorName = GeneratedColumn<String>(
    'author_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _captionMeta = const VerificationMeta(
    'caption',
  );
  @override
  late final GeneratedColumn<String> caption = GeneratedColumn<String>(
    'caption',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _likesMeta = const VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes = GeneratedColumn<int>(
    'likes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isLikedMeta = const VerificationMeta(
    'isLiked',
  );
  @override
  late final GeneratedColumn<bool> isLiked = GeneratedColumn<bool>(
    'is_liked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_liked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    authorId,
    authorName,
    imageUrl,
    caption,
    likes,
    isLiked,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_posts';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedPost> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('author_id')) {
      context.handle(
        _authorIdMeta,
        authorId.isAcceptableOrUnknown(data['author_id']!, _authorIdMeta),
      );
    } else if (isInserting) {
      context.missing(_authorIdMeta);
    }
    if (data.containsKey('author_name')) {
      context.handle(
        _authorNameMeta,
        authorName.isAcceptableOrUnknown(data['author_name']!, _authorNameMeta),
      );
    } else if (isInserting) {
      context.missing(_authorNameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('caption')) {
      context.handle(
        _captionMeta,
        caption.isAcceptableOrUnknown(data['caption']!, _captionMeta),
      );
    } else if (isInserting) {
      context.missing(_captionMeta);
    }
    if (data.containsKey('likes')) {
      context.handle(
        _likesMeta,
        likes.isAcceptableOrUnknown(data['likes']!, _likesMeta),
      );
    }
    if (data.containsKey('is_liked')) {
      context.handle(
        _isLikedMeta,
        isLiked.isAcceptableOrUnknown(data['is_liked']!, _isLikedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedPost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedPost(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      authorId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_id'],
      )!,
      authorName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_name'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      caption: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}caption'],
      )!,
      likes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}likes'],
      )!,
      isLiked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_liked'],
      )!,
    );
  }

  @override
  $CachedPostsTable createAlias(String alias) {
    return $CachedPostsTable(attachedDatabase, alias);
  }
}

class CachedPost extends DataClass implements Insertable<CachedPost> {
  final String id;
  final String authorId;
  final String authorName;
  final String imageUrl;
  final String caption;
  final int likes;
  final bool isLiked;
  const CachedPost({
    required this.id,
    required this.authorId,
    required this.authorName,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.isLiked,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['author_id'] = Variable<String>(authorId);
    map['author_name'] = Variable<String>(authorName);
    map['image_url'] = Variable<String>(imageUrl);
    map['caption'] = Variable<String>(caption);
    map['likes'] = Variable<int>(likes);
    map['is_liked'] = Variable<bool>(isLiked);
    return map;
  }

  CachedPostsCompanion toCompanion(bool nullToAbsent) {
    return CachedPostsCompanion(
      id: Value(id),
      authorId: Value(authorId),
      authorName: Value(authorName),
      imageUrl: Value(imageUrl),
      caption: Value(caption),
      likes: Value(likes),
      isLiked: Value(isLiked),
    );
  }

  factory CachedPost.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedPost(
      id: serializer.fromJson<String>(json['id']),
      authorId: serializer.fromJson<String>(json['authorId']),
      authorName: serializer.fromJson<String>(json['authorName']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      caption: serializer.fromJson<String>(json['caption']),
      likes: serializer.fromJson<int>(json['likes']),
      isLiked: serializer.fromJson<bool>(json['isLiked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'authorId': serializer.toJson<String>(authorId),
      'authorName': serializer.toJson<String>(authorName),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'caption': serializer.toJson<String>(caption),
      'likes': serializer.toJson<int>(likes),
      'isLiked': serializer.toJson<bool>(isLiked),
    };
  }

  CachedPost copyWith({
    String? id,
    String? authorId,
    String? authorName,
    String? imageUrl,
    String? caption,
    int? likes,
    bool? isLiked,
  }) => CachedPost(
    id: id ?? this.id,
    authorId: authorId ?? this.authorId,
    authorName: authorName ?? this.authorName,
    imageUrl: imageUrl ?? this.imageUrl,
    caption: caption ?? this.caption,
    likes: likes ?? this.likes,
    isLiked: isLiked ?? this.isLiked,
  );
  CachedPost copyWithCompanion(CachedPostsCompanion data) {
    return CachedPost(
      id: data.id.present ? data.id.value : this.id,
      authorId: data.authorId.present ? data.authorId.value : this.authorId,
      authorName: data.authorName.present
          ? data.authorName.value
          : this.authorName,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      caption: data.caption.present ? data.caption.value : this.caption,
      likes: data.likes.present ? data.likes.value : this.likes,
      isLiked: data.isLiked.present ? data.isLiked.value : this.isLiked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedPost(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('authorName: $authorName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('caption: $caption, ')
          ..write('likes: $likes, ')
          ..write('isLiked: $isLiked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, authorId, authorName, imageUrl, caption, likes, isLiked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedPost &&
          other.id == this.id &&
          other.authorId == this.authorId &&
          other.authorName == this.authorName &&
          other.imageUrl == this.imageUrl &&
          other.caption == this.caption &&
          other.likes == this.likes &&
          other.isLiked == this.isLiked);
}

class CachedPostsCompanion extends UpdateCompanion<CachedPost> {
  final Value<String> id;
  final Value<String> authorId;
  final Value<String> authorName;
  final Value<String> imageUrl;
  final Value<String> caption;
  final Value<int> likes;
  final Value<bool> isLiked;
  final Value<int> rowid;
  const CachedPostsCompanion({
    this.id = const Value.absent(),
    this.authorId = const Value.absent(),
    this.authorName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.caption = const Value.absent(),
    this.likes = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedPostsCompanion.insert({
    required String id,
    required String authorId,
    required String authorName,
    required String imageUrl,
    required String caption,
    this.likes = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       authorId = Value(authorId),
       authorName = Value(authorName),
       imageUrl = Value(imageUrl),
       caption = Value(caption);
  static Insertable<CachedPost> custom({
    Expression<String>? id,
    Expression<String>? authorId,
    Expression<String>? authorName,
    Expression<String>? imageUrl,
    Expression<String>? caption,
    Expression<int>? likes,
    Expression<bool>? isLiked,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (authorId != null) 'author_id': authorId,
      if (authorName != null) 'author_name': authorName,
      if (imageUrl != null) 'image_url': imageUrl,
      if (caption != null) 'caption': caption,
      if (likes != null) 'likes': likes,
      if (isLiked != null) 'is_liked': isLiked,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedPostsCompanion copyWith({
    Value<String>? id,
    Value<String>? authorId,
    Value<String>? authorName,
    Value<String>? imageUrl,
    Value<String>? caption,
    Value<int>? likes,
    Value<bool>? isLiked,
    Value<int>? rowid,
  }) {
    return CachedPostsCompanion(
      id: id ?? this.id,
      authorId: authorId ?? this.authorId,
      authorName: authorName ?? this.authorName,
      imageUrl: imageUrl ?? this.imageUrl,
      caption: caption ?? this.caption,
      likes: likes ?? this.likes,
      isLiked: isLiked ?? this.isLiked,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (authorId.present) {
      map['author_id'] = Variable<String>(authorId.value);
    }
    if (authorName.present) {
      map['author_name'] = Variable<String>(authorName.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (caption.present) {
      map['caption'] = Variable<String>(caption.value);
    }
    if (likes.present) {
      map['likes'] = Variable<int>(likes.value);
    }
    if (isLiked.present) {
      map['is_liked'] = Variable<bool>(isLiked.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedPostsCompanion(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('authorName: $authorName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('caption: $caption, ')
          ..write('likes: $likes, ')
          ..write('isLiked: $isLiked, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserProfilesTable extends UserProfiles
    with TableInfo<$UserProfilesTable, UserProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nicknameMeta = const VerificationMeta(
    'nickname',
  );
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
    'nickname',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _saltMeta = const VerificationMeta('salt');
  @override
  late final GeneratedColumn<String> salt = GeneratedColumn<String>(
    'salt',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nickname,
    avatarUrl,
    email,
    password,
    salt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(
        _nicknameMeta,
        nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta),
      );
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('salt')) {
      context.handle(
        _saltMeta,
        salt.isAcceptableOrUnknown(data['salt']!, _saltMeta),
      );
    } else if (isInserting) {
      context.missing(_saltMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      nickname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nickname'],
      )!,
      avatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_url'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
      salt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}salt'],
      )!,
    );
  }

  @override
  $UserProfilesTable createAlias(String alias) {
    return $UserProfilesTable(attachedDatabase, alias);
  }
}

class UserProfile extends DataClass implements Insertable<UserProfile> {
  final String id;
  final String nickname;
  final String? avatarUrl;
  final String email;
  final String password;
  final String salt;
  const UserProfile({
    required this.id,
    required this.nickname,
    this.avatarUrl,
    required this.email,
    required this.password,
    required this.salt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['nickname'] = Variable<String>(nickname);
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['salt'] = Variable<String>(salt);
    return map;
  }

  UserProfilesCompanion toCompanion(bool nullToAbsent) {
    return UserProfilesCompanion(
      id: Value(id),
      nickname: Value(nickname),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      email: Value(email),
      password: Value(password),
      salt: Value(salt),
    );
  }

  factory UserProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfile(
      id: serializer.fromJson<String>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      salt: serializer.fromJson<String>(json['salt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nickname': serializer.toJson<String>(nickname),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'salt': serializer.toJson<String>(salt),
    };
  }

  UserProfile copyWith({
    String? id,
    String? nickname,
    Value<String?> avatarUrl = const Value.absent(),
    String? email,
    String? password,
    String? salt,
  }) => UserProfile(
    id: id ?? this.id,
    nickname: nickname ?? this.nickname,
    avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
    email: email ?? this.email,
    password: password ?? this.password,
    salt: salt ?? this.salt,
  );
  UserProfile copyWithCompanion(UserProfilesCompanion data) {
    return UserProfile(
      id: data.id.present ? data.id.value : this.id,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      email: data.email.present ? data.email.value : this.email,
      password: data.password.present ? data.password.value : this.password,
      salt: data.salt.present ? data.salt.value : this.salt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfile(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('salt: $salt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nickname, avatarUrl, email, password, salt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfile &&
          other.id == this.id &&
          other.nickname == this.nickname &&
          other.avatarUrl == this.avatarUrl &&
          other.email == this.email &&
          other.password == this.password &&
          other.salt == this.salt);
}

class UserProfilesCompanion extends UpdateCompanion<UserProfile> {
  final Value<String> id;
  final Value<String> nickname;
  final Value<String?> avatarUrl;
  final Value<String> email;
  final Value<String> password;
  final Value<String> salt;
  final Value<int> rowid;
  const UserProfilesCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.salt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserProfilesCompanion.insert({
    required String id,
    required String nickname,
    this.avatarUrl = const Value.absent(),
    required String email,
    required String password,
    required String salt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       nickname = Value(nickname),
       email = Value(email),
       password = Value(password),
       salt = Value(salt);
  static Insertable<UserProfile> custom({
    Expression<String>? id,
    Expression<String>? nickname,
    Expression<String>? avatarUrl,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? salt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (salt != null) 'salt': salt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserProfilesCompanion copyWith({
    Value<String>? id,
    Value<String>? nickname,
    Value<String?>? avatarUrl,
    Value<String>? email,
    Value<String>? password,
    Value<String>? salt,
    Value<int>? rowid,
  }) {
    return UserProfilesCompanion(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      email: email ?? this.email,
      password: password ?? this.password,
      salt: salt ?? this.salt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (salt.present) {
      map['salt'] = Variable<String>(salt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfilesCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('salt: $salt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PostLikesTable extends PostLikes
    with TableInfo<$PostLikesTable, PostLike> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostLikesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES user_profiles (id)',
    ),
  );
  static const VerificationMeta _postIdMeta = const VerificationMeta('postId');
  @override
  late final GeneratedColumn<String> postId = GeneratedColumn<String>(
    'post_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cached_posts (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [userId, postId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'post_likes';
  @override
  VerificationContext validateIntegrity(
    Insertable<PostLike> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('post_id')) {
      context.handle(
        _postIdMeta,
        postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta),
      );
    } else if (isInserting) {
      context.missing(_postIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, postId};
  @override
  PostLike map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostLike(
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      postId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}post_id'],
      )!,
    );
  }

  @override
  $PostLikesTable createAlias(String alias) {
    return $PostLikesTable(attachedDatabase, alias);
  }
}

class PostLike extends DataClass implements Insertable<PostLike> {
  final String userId;
  final String postId;
  const PostLike({required this.userId, required this.postId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['post_id'] = Variable<String>(postId);
    return map;
  }

  PostLikesCompanion toCompanion(bool nullToAbsent) {
    return PostLikesCompanion(userId: Value(userId), postId: Value(postId));
  }

  factory PostLike.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostLike(
      userId: serializer.fromJson<String>(json['userId']),
      postId: serializer.fromJson<String>(json['postId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'postId': serializer.toJson<String>(postId),
    };
  }

  PostLike copyWith({String? userId, String? postId}) =>
      PostLike(userId: userId ?? this.userId, postId: postId ?? this.postId);
  PostLike copyWithCompanion(PostLikesCompanion data) {
    return PostLike(
      userId: data.userId.present ? data.userId.value : this.userId,
      postId: data.postId.present ? data.postId.value : this.postId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PostLike(')
          ..write('userId: $userId, ')
          ..write('postId: $postId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, postId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostLike &&
          other.userId == this.userId &&
          other.postId == this.postId);
}

class PostLikesCompanion extends UpdateCompanion<PostLike> {
  final Value<String> userId;
  final Value<String> postId;
  final Value<int> rowid;
  const PostLikesCompanion({
    this.userId = const Value.absent(),
    this.postId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PostLikesCompanion.insert({
    required String userId,
    required String postId,
    this.rowid = const Value.absent(),
  }) : userId = Value(userId),
       postId = Value(postId);
  static Insertable<PostLike> custom({
    Expression<String>? userId,
    Expression<String>? postId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (postId != null) 'post_id': postId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PostLikesCompanion copyWith({
    Value<String>? userId,
    Value<String>? postId,
    Value<int>? rowid,
  }) {
    return PostLikesCompanion(
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (postId.present) {
      map['post_id'] = Variable<String>(postId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostLikesCompanion(')
          ..write('userId: $userId, ')
          ..write('postId: $postId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CachedPostsTable cachedPosts = $CachedPostsTable(this);
  late final $UserProfilesTable userProfiles = $UserProfilesTable(this);
  late final $PostLikesTable postLikes = $PostLikesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cachedPosts,
    userProfiles,
    postLikes,
  ];
}

typedef $$CachedPostsTableCreateCompanionBuilder =
    CachedPostsCompanion Function({
      required String id,
      required String authorId,
      required String authorName,
      required String imageUrl,
      required String caption,
      Value<int> likes,
      Value<bool> isLiked,
      Value<int> rowid,
    });
typedef $$CachedPostsTableUpdateCompanionBuilder =
    CachedPostsCompanion Function({
      Value<String> id,
      Value<String> authorId,
      Value<String> authorName,
      Value<String> imageUrl,
      Value<String> caption,
      Value<int> likes,
      Value<bool> isLiked,
      Value<int> rowid,
    });

final class $$CachedPostsTableReferences
    extends BaseReferences<_$AppDatabase, $CachedPostsTable, CachedPost> {
  $$CachedPostsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PostLikesTable, List<PostLike>>
  _postLikesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.postLikes,
    aliasName: 'cached_posts__id__post_likes__post_id',
  );

  $$PostLikesTableProcessedTableManager get postLikesRefs {
    final manager = $$PostLikesTableTableManager(
      $_db,
      $_db.postLikes,
    ).filter((f) => f.postId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_postLikesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CachedPostsTableFilterComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get likes => $composableBuilder(
    column: $table.likes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> postLikesRefs(
    Expression<bool> Function($$PostLikesTableFilterComposer f) f,
  ) {
    final $$PostLikesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.postLikes,
      getReferencedColumn: (t) => t.postId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PostLikesTableFilterComposer(
            $db: $db,
            $table: $db.postLikes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CachedPostsTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get likes => $composableBuilder(
    column: $table.likes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedPostsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get authorId =>
      $composableBuilder(column: $table.authorId, builder: (column) => column);

  GeneratedColumn<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get caption =>
      $composableBuilder(column: $table.caption, builder: (column) => column);

  GeneratedColumn<int> get likes =>
      $composableBuilder(column: $table.likes, builder: (column) => column);

  GeneratedColumn<bool> get isLiked =>
      $composableBuilder(column: $table.isLiked, builder: (column) => column);

  Expression<T> postLikesRefs<T extends Object>(
    Expression<T> Function($$PostLikesTableAnnotationComposer a) f,
  ) {
    final $$PostLikesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.postLikes,
      getReferencedColumn: (t) => t.postId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PostLikesTableAnnotationComposer(
            $db: $db,
            $table: $db.postLikes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CachedPostsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CachedPostsTable,
          CachedPost,
          $$CachedPostsTableFilterComposer,
          $$CachedPostsTableOrderingComposer,
          $$CachedPostsTableAnnotationComposer,
          $$CachedPostsTableCreateCompanionBuilder,
          $$CachedPostsTableUpdateCompanionBuilder,
          (CachedPost, $$CachedPostsTableReferences),
          CachedPost,
          PrefetchHooks Function({bool postLikesRefs})
        > {
  $$CachedPostsTableTableManager(_$AppDatabase db, $CachedPostsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedPostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedPostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedPostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> authorId = const Value.absent(),
                Value<String> authorName = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> caption = const Value.absent(),
                Value<int> likes = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedPostsCompanion(
                id: id,
                authorId: authorId,
                authorName: authorName,
                imageUrl: imageUrl,
                caption: caption,
                likes: likes,
                isLiked: isLiked,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String authorId,
                required String authorName,
                required String imageUrl,
                required String caption,
                Value<int> likes = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedPostsCompanion.insert(
                id: id,
                authorId: authorId,
                authorName: authorName,
                imageUrl: imageUrl,
                caption: caption,
                likes: likes,
                isLiked: isLiked,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CachedPostsTable, CachedPost>(table),
                  $$CachedPostsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({postLikesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (postLikesRefs) db.postLikes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (postLikesRefs)
                    await $_getPrefetchedDataByColumns<
                      CachedPost,
                      $CachedPostsTable,
                      PostLike,
                      $PostLikesTable
                    >(
                      currentTable: table,
                      referencedTable: $$CachedPostsTableReferences
                          ._postLikesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CachedPostsTableReferences(
                            db,
                            table,
                            p0,
                          ).postLikesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'post_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CachedPostsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CachedPostsTable,
      CachedPost,
      $$CachedPostsTableFilterComposer,
      $$CachedPostsTableOrderingComposer,
      $$CachedPostsTableAnnotationComposer,
      $$CachedPostsTableCreateCompanionBuilder,
      $$CachedPostsTableUpdateCompanionBuilder,
      (CachedPost, $$CachedPostsTableReferences),
      CachedPost,
      PrefetchHooks Function({bool postLikesRefs})
    >;
typedef $$UserProfilesTableCreateCompanionBuilder =
    UserProfilesCompanion Function({
      required String id,
      required String nickname,
      Value<String?> avatarUrl,
      required String email,
      required String password,
      required String salt,
      Value<int> rowid,
    });
typedef $$UserProfilesTableUpdateCompanionBuilder =
    UserProfilesCompanion Function({
      Value<String> id,
      Value<String> nickname,
      Value<String?> avatarUrl,
      Value<String> email,
      Value<String> password,
      Value<String> salt,
      Value<int> rowid,
    });

final class $$UserProfilesTableReferences
    extends BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile> {
  $$UserProfilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PostLikesTable, List<PostLike>>
  _postLikesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.postLikes,
    aliasName: 'user_profiles__id__post_likes__user_id',
  );

  $$PostLikesTableProcessedTableManager get postLikesRefs {
    final manager = $$PostLikesTableTableManager(
      $_db,
      $_db.postLikes,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_postLikesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$UserProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get salt => $composableBuilder(
    column: $table.salt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> postLikesRefs(
    Expression<bool> Function($$PostLikesTableFilterComposer f) f,
  ) {
    final $$PostLikesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.postLikes,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PostLikesTableFilterComposer(
            $db: $db,
            $table: $db.postLikes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UserProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get salt => $composableBuilder(
    column: $table.salt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<String> get salt =>
      $composableBuilder(column: $table.salt, builder: (column) => column);

  Expression<T> postLikesRefs<T extends Object>(
    Expression<T> Function($$PostLikesTableAnnotationComposer a) f,
  ) {
    final $$PostLikesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.postLikes,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PostLikesTableAnnotationComposer(
            $db: $db,
            $table: $db.postLikes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UserProfilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProfilesTable,
          UserProfile,
          $$UserProfilesTableFilterComposer,
          $$UserProfilesTableOrderingComposer,
          $$UserProfilesTableAnnotationComposer,
          $$UserProfilesTableCreateCompanionBuilder,
          $$UserProfilesTableUpdateCompanionBuilder,
          (UserProfile, $$UserProfilesTableReferences),
          UserProfile,
          PrefetchHooks Function({bool postLikesRefs})
        > {
  $$UserProfilesTableTableManager(_$AppDatabase db, $UserProfilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> nickname = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<String> salt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion(
                id: id,
                nickname: nickname,
                avatarUrl: avatarUrl,
                email: email,
                password: password,
                salt: salt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String nickname,
                Value<String?> avatarUrl = const Value.absent(),
                required String email,
                required String password,
                required String salt,
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion.insert(
                id: id,
                nickname: nickname,
                avatarUrl: avatarUrl,
                email: email,
                password: password,
                salt: salt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserProfilesTable, UserProfile>(table),
                  $$UserProfilesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({postLikesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (postLikesRefs) db.postLikes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (postLikesRefs)
                    await $_getPrefetchedDataByColumns<
                      UserProfile,
                      $UserProfilesTable,
                      PostLike,
                      $PostLikesTable
                    >(
                      currentTable: table,
                      referencedTable: $$UserProfilesTableReferences
                          ._postLikesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$UserProfilesTableReferences(
                            db,
                            table,
                            p0,
                          ).postLikesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'user_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$UserProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProfilesTable,
      UserProfile,
      $$UserProfilesTableFilterComposer,
      $$UserProfilesTableOrderingComposer,
      $$UserProfilesTableAnnotationComposer,
      $$UserProfilesTableCreateCompanionBuilder,
      $$UserProfilesTableUpdateCompanionBuilder,
      (UserProfile, $$UserProfilesTableReferences),
      UserProfile,
      PrefetchHooks Function({bool postLikesRefs})
    >;
typedef $$PostLikesTableCreateCompanionBuilder = PostLikesCompanion Function({
  required String userId,
  required String postId,
  Value<int> rowid,
});
typedef $$PostLikesTableUpdateCompanionBuilder = PostLikesCompanion Function({
  Value<String> userId,
  Value<String> postId,
  Value<int> rowid,
});

final class $$PostLikesTableReferences
    extends BaseReferences<_$AppDatabase, $PostLikesTable, PostLike> {
  $$PostLikesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias('post_likes__user_id__user_profiles__id');

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager(
      $_db,
      $_db.userProfiles,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CachedPostsTable _postIdTable(_$AppDatabase db) =>
      db.cachedPosts.createAlias('post_likes__post_id__cached_posts__id');

  $$CachedPostsTableProcessedTableManager get postId {
    final $_column = $_itemColumn<String>('post_id')!;

    final manager = $$CachedPostsTableTableManager(
      $_db,
      $_db.cachedPosts,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_postIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PostLikesTableFilterComposer
    extends Composer<_$AppDatabase, $PostLikesTable> {
  $$PostLikesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userProfiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserProfilesTableFilterComposer(
            $db: $db,
            $table: $db.userProfiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CachedPostsTableFilterComposer get postId {
    final $$CachedPostsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.postId,
      referencedTable: $db.cachedPosts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CachedPostsTableFilterComposer(
            $db: $db,
            $table: $db.cachedPosts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PostLikesTableOrderingComposer
    extends Composer<_$AppDatabase, $PostLikesTable> {
  $$PostLikesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userProfiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserProfilesTableOrderingComposer(
            $db: $db,
            $table: $db.userProfiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CachedPostsTableOrderingComposer get postId {
    final $$CachedPostsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.postId,
      referencedTable: $db.cachedPosts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CachedPostsTableOrderingComposer(
            $db: $db,
            $table: $db.cachedPosts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PostLikesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PostLikesTable> {
  $$PostLikesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.userProfiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserProfilesTableAnnotationComposer(
            $db: $db,
            $table: $db.userProfiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CachedPostsTableAnnotationComposer get postId {
    final $$CachedPostsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.postId,
      referencedTable: $db.cachedPosts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CachedPostsTableAnnotationComposer(
            $db: $db,
            $table: $db.cachedPosts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PostLikesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PostLikesTable,
          PostLike,
          $$PostLikesTableFilterComposer,
          $$PostLikesTableOrderingComposer,
          $$PostLikesTableAnnotationComposer,
          $$PostLikesTableCreateCompanionBuilder,
          $$PostLikesTableUpdateCompanionBuilder,
          (PostLike, $$PostLikesTableReferences),
          PostLike,
          PrefetchHooks Function({bool userId, bool postId})
        > {
  $$PostLikesTableTableManager(_$AppDatabase db, $PostLikesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PostLikesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PostLikesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PostLikesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userId = const Value.absent(),
                Value<String> postId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PostLikesCompanion(
                userId: userId,
                postId: postId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userId,
                required String postId,
                Value<int> rowid = const Value.absent(),
              }) => PostLikesCompanion.insert(
                userId: userId,
                postId: postId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PostLikesTable, PostLike>(table),
                  $$PostLikesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userId = false, postId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.userId,
                        referencedTable: $$PostLikesTableReferences
                            ._userIdTable(db),
                        referencedColumn: $$PostLikesTableReferences
                            ._userIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (postId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.postId,
                        referencedTable: $$PostLikesTableReferences
                            ._postIdTable(db),
                        referencedColumn: $$PostLikesTableReferences
                            ._postIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PostLikesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PostLikesTable,
      PostLike,
      $$PostLikesTableFilterComposer,
      $$PostLikesTableOrderingComposer,
      $$PostLikesTableAnnotationComposer,
      $$PostLikesTableCreateCompanionBuilder,
      $$PostLikesTableUpdateCompanionBuilder,
      (PostLike, $$PostLikesTableReferences),
      PostLike,
      PrefetchHooks Function({bool userId, bool postId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CachedPostsTableTableManager get cachedPosts =>
      $$CachedPostsTableTableManager(_db, _db.cachedPosts);
  $$UserProfilesTableTableManager get userProfiles =>
      $$UserProfilesTableTableManager(_db, _db.userProfiles);
  $$PostLikesTableTableManager get postLikes =>
      $$PostLikesTableTableManager(_db, _db.postLikes);
}
