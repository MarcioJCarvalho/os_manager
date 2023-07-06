import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/utils/rotas.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    late UsuarioDTO usuarioDTO;
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
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/2456322047/004XJm-y7WR-_-mc-champions-e-gu-do-vaz-de-lima-pode-vi_400x400.jpg'),
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
                    thickness: 1,
                    indent: 1,
                    endIndent: 1,
                    color: Colors.grey,
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
