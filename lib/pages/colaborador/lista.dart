import 'package:flutter/material.dart';

class ColaboradorLista extends StatelessWidget {
  const ColaboradorLista({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColaboradorLista'),
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