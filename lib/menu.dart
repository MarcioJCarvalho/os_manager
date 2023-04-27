import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/rotas.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("corsinha_amarelo@email.com"),
            accountName: Text("Mc Champinho"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/2456322047/004XJm-y7WR-_-mc-champions-e-gu-do-vaz-de-lima-pode-vi_400x400.jpg'),
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF0C5DBE),
            ),
          ),
          ListTile(
            leading: const Icon(LineIcons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.HOME);
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.user),
            title: const Text("Clientes"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.CLIENTE_LISTA);
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.hardHat),
            title: const Text("Tecnicos"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.TECNICO_LISTA);
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.userTie),
            title: const Text("Colaboradores"),
            onTap: () {
              Navigator.pushNamed(context, Rotas.COLABORADOR_LISTA);
              //Navegar para outra página
            },
          ),
        ],
      ),
    );
  }
}
