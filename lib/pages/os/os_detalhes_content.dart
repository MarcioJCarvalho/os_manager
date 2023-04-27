import 'package:flutter/material.dart';
import 'package:os_manager/rotas.dart';
import 'package:os_manager/utils/colors.dart';

class OsDetalhesContent extends StatelessWidget {
  const OsDetalhesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _voltar() {
      Navigator.pushNamed(context, Rotas.HOME);
    }

    return Scaffold(
      backgroundColor: grayColor,
      body: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(top: 35)),
                Text(
                  "Detalhes da Ordens de Serviço",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Column(
              children: [Text("Nome do Cliente:"), Text("Cliente1")],
            )),
            Expanded(
                child: Column(
              children: [Text("Local da OS:"), Text("Rua 1")],
            )),
            Expanded(
                child: Column(
              children: [Text("Horário e Data:"), Text("08:50 - 10/04/2023")],
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                _voltar();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Voltar',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
