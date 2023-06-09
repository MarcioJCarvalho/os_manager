import 'package:os_manager/datebase/sqlite/scriptdb.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Conexao {
  static late Database _database;
  static bool _fechado = true;

  static Future<Database> criar() async {
    if (_fechado) {
      String path = join(await getDatabasesPath(), 'banco.db'); 
      deleteDatabase(path);                                    
      _database = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          criarTabelas.forEach(db.execute);
          inserirDados.forEach(db.execute);
        },
      );
      _fechado = false;
    }
    return _database;
  }
}
