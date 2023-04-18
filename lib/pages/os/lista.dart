import 'package:flutter/material.dart';

class OsLista extends StatelessWidget {
  const OsLista({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OsLista'),
      ),
      body: ElevatedButton(
        child: const Text('Cadastro'),
        onPressed: (){
          // Navigator.pushNamed(context, Rotas.CADASTRO);
        },
      ),
    );
  }
}