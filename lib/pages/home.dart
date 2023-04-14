// context é a estrutura da pilha
import 'package:flutter/material.dart';
import 'package:os_manager/rotas.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("Seu zé"),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Clientes"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.CLIENTE_LISTA);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Tecnicos"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.TECNICO_LISTA);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Colaboradores"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.COLABORADOR_LISTA);
                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
    );
  }
}
