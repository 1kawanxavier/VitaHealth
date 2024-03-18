import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  DB._();
  static final DB instance = DB._();
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'vitahealth.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(Database db, int version) async {
    await db.execute(_perfil);
    await db.execute(_treino);
    await db.insert('treino', {'IMC': 0});
  }

  String get _perfil => '''
    CREATE TABLE perfil(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      email TEXT,
      celular TEXT,
      usuario TEXT,
      senha TEXT,
      acesso INTEGER
    );
  ''';

  String get _treino => '''
    CREATE TABLE treino (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      idPerfil INTEGER,
      imc TEXT,
      dataNascimento TEXT,
      peso REAL,
      altura REAL
    );
  ''';
}
