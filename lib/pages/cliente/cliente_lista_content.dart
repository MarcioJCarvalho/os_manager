import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/pages/cliente/widgets/list_cliente.dart';
import 'package:os_manager/rotas.dart';
import 'package:os_manager/utils/colors.dart';

class ClienteListaContent extends StatelessWidget {
  const ClienteListaContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(8)),
              SizedBox(
                height: 30,
              ),
              Text(
                "Clientes",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(flex: 9, child: ListCliente()),
        ],
      ),
      floatingActionButton: _actionButton(context),
    );
  }

  FloatingActionButton _actionButton(BuildContext context) {
    return FloatingActionButton(
      hoverColor: secundaryColor,
      tooltip: "Criar nova OS",
      onPressed: () {
        // Navegar para cadastro de Clientes
        Navigator.pushNamed(context, Rotas.CLIENTE_CADASTRO);
      },
      backgroundColor: primaryColor,
      child: const Icon(LineIcons.userPlus),
    );
  }
}
