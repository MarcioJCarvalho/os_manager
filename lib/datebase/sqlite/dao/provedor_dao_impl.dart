import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/provedor_dto.dart';
import 'package:os_manager/interface/provedor_interface.dart';
import 'package:sqflite/sqflite.dart';

class ProvedorDAOImpl implements ProvedorInterface {
  @override
  Future buscarPorID(id) async {
    Database db = await Conexao.criar();
    List<Map> maps =
        await db.query('provedor', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) {
      throw Exception('Não foi encontrado registro com este id');
    }
    Map<dynamic, dynamic> provedor = maps.first;
    return ProvedorDTO.toDTO(provedor);
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
