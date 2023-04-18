import 'package:flutter/material.dart';

class ClienteLista extends StatelessWidget{
  const ClienteLista({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClienteLista'),
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