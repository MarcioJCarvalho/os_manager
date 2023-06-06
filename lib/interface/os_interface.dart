import 'package:os_manager/dto/os_dto.dart';

abstract class OSInterface {
  Future<OSDTO> buscarPorID(int id);
  Future<List<OSDTO>> listarTodos();
  Future<bool> deletar(dynamic id);
  Future<OSDTO> salvar(OSDTO os);
  Future<List<OSDTO>> listarTodosPorIdUsuario(dynamic id);
}
