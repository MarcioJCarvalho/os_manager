import 'package:os_manager/datebase/sqlite/dao/provedor_dao_impl.dart';
import 'package:os_manager/dto/provedor_dto.dart';

class UsuarioDTO {
  final dynamic id;
  final String email;
  final String senha;
  final String nome;
  final String? urlPerfil;
  final ProvedorDTO provedorDTO;

  UsuarioDTO({
    this.id,
    this.urlPerfil,
    required this.email,
    required this.senha,
    required this.nome,
    required this.provedorDTO,
  });

  @override
  String toString() {
    return '''
      $id,
      $email,
      $senha,
      $nome,
      $urlPerfil,
  ''';
  }

  static Future<UsuarioDTO> toDTO(Map<dynamic, dynamic> usuario) async {
    ProvedorDTO provedor =
        await ProvedorDAOImpl().buscarPorID(usuario['provedor_id']);
    return UsuarioDTO(
      id: usuario['id'],
      nome: usuario['nome'],
      email: usuario['email'],
      senha: usuario['senha'],
      urlPerfil: usuario['url_perfil'],
      provedorDTO: provedor,
    );
  }
}
