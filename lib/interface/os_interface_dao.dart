import 'package:os_manager/dto/os.dart';

abstract class OSInterfaceDAO {
  Future<OS> buscarPorID(int id);
  Future<List<OS>> listarTodos();
  Future<bool> deletar(dynamic id);
  Future<OS> salvar(OS os);
}
