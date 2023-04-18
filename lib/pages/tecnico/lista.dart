import 'package:flutter/material.dart';

class TecnicoLista extends StatelessWidget {
  const TecnicoLista({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tecnicos'),
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