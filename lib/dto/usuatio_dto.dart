import 'package:os_manager/datebase/sqlite/dao/provedor_dao_impl.dart';
import 'package:os_manager/dto/provedor_dto.dart';

class UsuarioDTO {
  final dynamic id;
  final String email;
  final String senha;
  final String nome;
  final ProvedorDTO provedorDTO;

  UsuarioDTO({
    this.id,
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
      provedorDTO: provedor,
    );
  }
}
