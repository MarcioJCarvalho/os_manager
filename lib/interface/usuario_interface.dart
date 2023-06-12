import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/utils/generic_dao.dart';

abstract class UsuarioInterface extends GenericDAO{
  Future<UsuarioDTO> auth(String email, String senha);
}