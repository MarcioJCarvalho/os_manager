import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/os.dart';
import 'package:os_manager/interface/os_interface_dao.dart';
import 'package:sqflite/sqflite.dart';

class OSDAOImpl implements OSInterfaceDAO {
  @override
  Future<OS> buscarPorID(int id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('os', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty)
      throw Exception('Não foi encontrado registro com este id');
    Map<dynamic, dynamic> resultado = maps.first;
    return converterOS(resultado);
  }

  @override
  Future<bool> deletar(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM os WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<List<OS>> listarTodos() async {
    Database db = await Conexao.criar();
    List<OS> lista = (await db.query('os')).map<OS>(converterOS).toList();
    return lista;
  }

  @override
  Future<OS> salvar(OS os) async {
    Database db = await Conexao.criar();
    String sql;
    if (os.id == null) {
      sql =
          'INSERT INTO os (nomeCliente, telefoneCliente, emailCliente, enderecoCliente) VALUES (?,?,?,?)';
      int id = await db.rawInsert(sql, [
        os.nomeCliente,
        os.telefoneCliente,
        os.emailCliente,
        os.enderecoCliente
      ]);
      os = OS(
          id: id,
          nomeCliente: os.nomeCliente,
          telefoneCliente: os.telefoneCliente,
          emailCliente: os.emailCliente,
          enderecoCliente: os.enderecoCliente);
    } else {
      sql =
          'UPDATE os SET nomeCliente = ?, telefoneCliente = ?, emailCliente = ?, enderecoCliente = ? WHERE id = ?';
      db.rawUpdate(sql, [
        os.nomeCliente,
        os.telefoneCliente,
        os.emailCliente,
        os.enderecoCliente,
        os.id
      ]);
    }
    return os;
  }

  OS converterOS(Map<dynamic, dynamic> resultado) {
    return OS(
        id: resultado['id'],
        nomeCliente: resultado['nomeCliente'],
        telefoneCliente: resultado['telefoneCliente'],
        emailCliente: resultado['emailCliente'],
        enderecoCliente: resultado['enderecoCliente']);
  }
}
