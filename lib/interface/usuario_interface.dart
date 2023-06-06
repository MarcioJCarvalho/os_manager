import 'package:os_manager/dto/usuatio_dto.dart';

abstract class UsuarioInterface{
  Future<UsuarioDTO> buscarPorID(int id);
  Future<List<UsuarioDTO>> listarTodos();
  Future<bool> deletar(dynamic id);
  Future<UsuarioDTO> salvar(UsuarioDTO usuarioDTO);
}