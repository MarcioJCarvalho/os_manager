import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/pages/home/widgets/card_os.dart';
import 'package:os_manager/pages/home/widgets/card_tecnico.dart';
import 'package:os_manager/pages/home/widgets/list_os.dart';
import 'package:os_manager/rotas.dart';
import 'package:os_manager/utils/colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(flex: 5, child: CardOs()),
                  Expanded(flex: 5, child: CardTecnico()),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(8)),
              Text(
                "Ordens de Serviço",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(flex: 9, child: ListOs()),
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
        // Navegar para cadastro de OS
        Navigator.pushNamed(context, Rotas.OS_CADASTRO);
      },
      backgroundColor: primaryColor,
      child: const Icon(LineIcons.medicalNotes),
    );
  }
}
