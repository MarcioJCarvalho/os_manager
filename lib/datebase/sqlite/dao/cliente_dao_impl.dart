import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/cliente_dto.dart';
import 'package:os_manager/interface/cliente_interface.dart';
import 'package:sqflite/sqflite.dart';

class ClienteDAOImpl implements ClienteInterface{
  @override
  Future buscarPorID(id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('cliente', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) {
      throw Exception('Não foi encontrado registro com este id');
    }
    Map<dynamic, dynamic> cliente = maps.first;
    return ClienteDTO.toDTO(cliente);
  }

  @override
  Future<List> buscarTodos() {
    // TODO: implement buscarTodos
    throw UnimplementedError();
  }

  @override
  Future<bool> excluir(id) {
    // TODO: implement excluir
    throw UnimplementedError();
  }

  @override
  Future salvar(object) {
    // TODO: implement salvar
    throw UnimplementedError();
  }
}