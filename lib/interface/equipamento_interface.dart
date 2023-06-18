import 'package:os_manager/dto/equipamento_dto.dart';
import 'package:os_manager/utils/generic_dao.dart';

abstract class EquipamentoInterface extends GenericDAO{
  Future<List<EquipamentoDTO>> listarTodosPorIdUsuario(dynamic id);
  Future<EquipamentoDTO> salvarPorUsuarioID(EquipamentoDTO equipamentoDTO, dynamic usuarioId);
}