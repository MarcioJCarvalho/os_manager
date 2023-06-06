import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/rotas.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountEmail: Text("corsinha_amarelo@email.com"),
            accountName: Text("Mc Champinho"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/2456322047/004XJm-y7WR-_-mc-champions-e-gu-do-vaz-de-lima-pode-vi_400x400.jpg'),
            ),
            decoration: BoxDecoration(
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
        ],
      ),
    );
  }
}
