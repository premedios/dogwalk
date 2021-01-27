import 'dart:async';

import 'package:DogWalk/Model/Dog.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class StorageManager {
  static const DOGS_TABLE_NAME = "dogs";
  static const DOGS_COLUMN_ID = "id";
  static const DOGS_COLUMN_NAME = "name";
  static const DOGS_COLUMN_BREED = "breed";
  static const DOGS_COLUMN_COLOUR = "colour";
  static const DOGS_COLUMN_DATEOFBIRTH = "date_of_birth";
  static const DOGS_COLUMN_WEIGHT = "weight";

  static const WALKS_TABLE_NAME = "walks";
  static const WALKS_COLUMN_ID = "id";
  static const WALKS_COLUMN_BAGSUSED = "bags_used";
  static const WALKS_COLUMN_STARTTIME = "StartTime";
  static const WALKS_COLUMN_ENDTIME = "EndTime";

  static const WALKSESSIONS_TABLE_NAME = "walk_sessions";
  static const WALKSESSIONS_COLUMN_WALKID = "walk_id";
  static const WALKSESSIONS_COLUMN_DOGID = "dog_id";

  StorageManager._();
  static final StorageManager manager = StorageManager._();

  Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await createDB();
    return _db;
  }

  Future<Database> createDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), "dogwalks.db"),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE $DOGS_TABLE_NAME ("
            "$DOGS_COLUMN_ID INTEGER PRIMARY KEY,"
            "$DOGS_COLUMN_NAME TEXT,"
            "$DOGS_COLUMN_BREED TEXT,"
            "$DOGS_COLUMN_COLOUR TEXT,"
            "$DOGS_COLUMN_DATEOFBIRTH INTEGER,"
            "$DOGS_COLUMN_WEIGHT REAL"
            ")");
        await db.execute("CREATE TABLE $WALKS_TABLE_NAME ("
            "$WALKS_COLUMN_ID INTEGER PRIMARY KEY,"
            "$WALKS_COLUMN_BAGSUSED INTEGER,"
            "$WALKS_COLUMN_STARTTIME INTEGER,"
            "$WALKS_COLUMN_ENDTIME INTEGER"
            ")");

        await db.execute("CREATE TABLE $WALKSESSIONS_TABLE_NAME ("
            "$WALKSESSIONS_COLUMN_WALKID INTEGER,"
            "$WALKSESSIONS_COLUMN_DOGID INTEGER"
            ")");
      },
    );
  }

  Future<List<Dog>> dogs() async {
    final Database database = await db;

    final List<Map<String, dynamic>> maps =
        await database.query(DOGS_TABLE_NAME);

    return List.generate(maps.length, (index) {
      return Dog.fromMap(maps[index]);
    });
  }
}
