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
  
  //todo i can not do: hash password with crypto package

  @override
  Set<Column<Object>> get primaryKey => {id};
}

@DriftDatabase(tables: [CachedPosts, UserProfiles])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'social_app'));

  @override
  int get schemaVersion => 1;
}
