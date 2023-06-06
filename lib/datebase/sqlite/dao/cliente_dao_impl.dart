import 'package:os_manager/dto/cliente_dto.dart';
import 'package:os_manager/interface/cliente_interface.dart';

class ClienteDAOImpl implements ClienteInterface{
  @override
  Future<ClienteDTO> buscarPorID(int id) {
    // TODO: implement buscarPorID
    throw UnimplementedError();
  }

  @override
  Future<bool> deletar(id) {
    // TODO: implement deletar
    throw UnimplementedError();
  }

  @override
  Future<List<ClienteDTO>> listarTodos() {
    // TODO: implement listarTodos
    throw UnimplementedError();
  }

  @override
  Future<ClienteDTO> salvar(ClienteDTO clienteDTO) {
    // TODO: implement salvar
    throw UnimplementedError();
  }

}