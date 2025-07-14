import 'dart:async';

import 'package:bizkit_app/data/table_schemas.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BizkitDb {
  static final BizkitDb _instance = BizkitDb._internal();
  static Database? _database;

  BizkitDb._internal();

  factory BizkitDb() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database?> _initDb() async {
    String path = join(await getDatabasesPath(), 'bizkit_db.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    for (final schema in tableSchemas) {
      await db.execute(schema);
    }
  }
}
