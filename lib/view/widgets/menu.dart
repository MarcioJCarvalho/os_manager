import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/utils/rotas.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    late UsuarioDTO usuarioDTO;
    late String urlPadrao =
        "https://p2.trrsf.com/image/fget/cf/1200/900/middle/images.terra.com/2023/01/27/516249666-tiringa-reproducao-instagram-eutiringaoficial.jpg";
    usuarioDTO = ModalRoute.of(context)!.settings.arguments as UsuarioDTO;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 300,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage(usuarioDTO.urlPerfil ?? urlPadrao),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 19,
                            backgroundColor:
                                const Color.fromARGB(174, 255, 255, 255),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Rotas.PERFIL_USUARIO,
                                      arguments: usuarioDTO);
                                },
                                icon: const Icon(
                                  LineIcons.pen,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(usuarioDTO.nome,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                      )),
                  Text(usuarioDTO.email,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                      )),
                  const Divider(
                    thickness: 0,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.white,
                  ),
                  Text(usuarioDTO.provedorDTO.nome,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                      )),
                  Text(usuarioDTO.provedorDTO.telefone,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                      )),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(LineIcons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.HOME, arguments: usuarioDTO);
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.tools),
            title: const Text("Equipamento"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.EQUIPAMENTO_LISTA,
                  arguments: usuarioDTO);
            },
          ),
        ],
      ),
    );
  }
}
