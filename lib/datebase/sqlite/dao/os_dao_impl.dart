import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/os_dto.dart';
import 'package:os_manager/interface/os_interface.dart';
import 'package:sqflite/sqflite.dart';

class OSDAOImpl implements OSInterface {
  @override
  Future<OSDTO> buscarPorID(dynamic id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('os', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) {
      throw Exception('Não foi encontrado registro com este id');
    }
    Map<dynamic, dynamic> resultado = maps.first;
    return OSDTO.toDTO(resultado);
  }

  @override
  Future<List<OSDTO>> listarTodosPorIdUsuario(id) async {
    Database db = await Conexao.criar();
    List<Map<dynamic, dynamic>> mapOsList =
        await db.rawQuery("SELECT * FROM os WHERE usuario_id = '$id' AND status = 'ATIVO'");
    List<OSDTO> osList = [];
    for (var mapOs in mapOsList) {
      var os = await OSDTO.toDTO(mapOs);
      osList.add(os);
    }
    return osList;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM os WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future salvar(osdto) async {
    Database db = await Conexao.criar();
    String sql;
    sql =
        'UPDATE os SET status = ?, horario = ?, data = ? WHERE id = ?';
    db.rawUpdate(sql, [osdto.status, osdto.horario, osdto.data, osdto.id]);
    return osdto;
  }

  @override
  Future<List> buscarTodos() async {
    // TODO: implement buscarPorID
    throw UnimplementedError();
  }
}
 