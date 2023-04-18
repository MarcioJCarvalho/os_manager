import 'package:flutter/material.dart';

class OcorrenciaLista extends StatelessWidget {
  const OcorrenciaLista({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OcorrenciaLista'),
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