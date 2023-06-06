import 'package:os_manager/dto/cliente_dto.dart';

abstract class ClienteInterface{
  Future<ClienteDTO> buscarPorID(int id);
  Future<List<ClienteDTO>> listarTodos();
  Future<bool> deletar(dynamic id);
  Future<ClienteDTO> salvar(ClienteDTO clienteDTO);
}