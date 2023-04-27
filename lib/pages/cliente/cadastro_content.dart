import 'package:flutter/material.dart';
import 'package:os_manager/pages/cliente/widgets/form_cliente.dart';
import 'package:os_manager/utils/colors.dart';

class CadastrContent extends StatelessWidget {
  const CadastrContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  "Cadastro de Clientes",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(child: FormCliente()),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
