import 'package:os_manager/datebase/sqlite/conexao.dart';
import 'package:os_manager/dto/equipamento_dto.dart';
import 'package:os_manager/interface/equipamento_interface.dart';
import 'package:sqflite/sqflite.dart';

class EquipamentoDAOImpl implements EquipamentoInterface{
  @override
  Future<List<EquipamentoDTO>> listarTodosPorIdUsuario(id) async {
    Database db = await Conexao.criar();
    List<Map<dynamic, dynamic>> mapEquipamentoList =
        await db.rawQuery(
          '''
            SELECT * FROM equipamento eq
            LEFT JOIN equipamento_usuario eu ON eu.equipamento_id = eq.id
            WHERE eu.usuario_id = $id;
          '''
        );
    List<EquipamentoDTO> equipamentoList = [];
    for (var mapEquipamento in mapEquipamentoList) {
      var equipamento = await EquipamentoDTO.toDTO(mapEquipamento);
      equipamentoList.add(equipamento);
    }
    return equipamentoList;
  }

  @override
  Future<EquipamentoDTO> salvarPorUsuarioID(EquipamentoDTO equipamentoDTO, usuarioId) async {
    Database db = await Conexao.criar();
    String sql;
    if(equipamentoDTO.id == null){
      sql = 'INSERT INTO equipamento (nome) VALUES (?)';
      dynamic id = await db.rawInsert(sql, [equipamentoDTO.nome]);
      // salvando na tabela relacional
      await db.rawInsert('INSERT INTO equipamento_usuario (equipamento_id, usuario_id)VALUES ($id, $usuarioId)');
      equipamentoDTO = EquipamentoDTO(
        id: id,
        nome: equipamentoDTO.nome,
      );
    } else {
      sql = 'UPDATE equipamento SET nome = ? WHERE id = ?';
      db.rawUpdate(sql, [equipamentoDTO.nome, equipamentoDTO.id]);
    }

    return equipamentoDTO;
  }

  @override
  Future salvar(object) async {
    // TODO: implement buscarPorID
    throw UnimplementedError();
  }

  @override
  Future buscarPorID(id) {
    // TODO: implement buscarPorID
    throw UnimplementedError();
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