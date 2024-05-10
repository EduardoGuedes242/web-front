// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class Dbutil {
  static const int databaseVersion = 4;
  static late Database db;

  static Future<void> initDatabase() async {
    db = await Dbutil.database();
  }

  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'dados.db'),
      version: databaseVersion,
      onCreate: _create,
    );
  }

  static Future<void> _create(sql.Database db, int version) async {
    await db.execute('''
      CREATE TABLE EKL_CATEGORIA_TRANSFERENIA (
        CTT_CODIGO INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        CTT_TITULO_CATEGORIA VARCHAR(50) NOT NULL,
        CTT_TIPO_TRANSFERENCIA VARCHAR(20)
      );
    ''');

    await db.execute('''
      CREATE TABLE USUARIO (
        USU_CODIGO INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        USU_LOGIN VARCHAR(30) UNIQUE,
        USU_NOME VARCHAR(80),
        USU_SENHA VARCHAR(30),
      );
    ''');
  }
}
