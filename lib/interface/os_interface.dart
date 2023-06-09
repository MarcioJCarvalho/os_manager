import 'package:os_manager/dto/os_dto.dart';
import 'package:os_manager/utils/generic_dao.dart';

abstract class OSInterface extends GenericDAO{
  Future<List<OSDTO>> listarTodosPorIdUsuario(dynamic id);
}
