import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/utils/rotas.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late UsuarioDTO usuarioDTO =
        ModalRoute.of(context)!.settings.arguments as UsuarioDTO;
    late String urlPadrao = "";
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(LineIcons.angleLeft)),
          title: const Text('Perfil do Usuário'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 35),
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(usuarioDTO.urlPerfil ?? urlPadrao),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: const Color.fromARGB(174, 255, 255, 255),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Rotas.PERFIL_USUARIO,
                              arguments: usuarioDTO);
                        },
                        icon: const Icon(
                          LineIcons.camera,
                          color: Colors.black,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
