import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/usuario_interface.dart';
import 'package:sqflite/sqflite.dart';

class UsuarioDAOImpl implements UsuarioInterface{
  @override
  Future buscarPorID(id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('usuario', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) {
      throw Exception('Não foi encontrado registro com este id');
    }
    Map<dynamic, dynamic> usuario = maps.first;
    return UsuarioDTO.toDTO(usuario);
  }

  @override
  Future<UsuarioDTO> auth(String email, String senha) async {
    Database db = await Conexao.criar();
    var result = await db.rawQuery("SELECT * FROM usuario WHERE email = '$email' and senha = '$senha'");
    if (result.isEmpty) {
      throw Exception('Usuário ou senha incorreto');
    }
    Map<dynamic, dynamic> usuario = result.first;
    var usuarioDTO = UsuarioDTO.toDTO(usuario);
    return usuarioDTO;
  }

  @override
  Future salvar(object) async {
    Database db = await Conexao.criar();
    String sql;
    sql = 'UPDATE usuario SET nome = ? WHERE id = ?';
    await db.rawUpdate(sql, [object.nome, object.id]);
    return object;
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

}