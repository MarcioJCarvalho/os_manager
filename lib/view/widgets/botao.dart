import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final VoidCallback? acao;
  final String nome;
  final BuildContext context;
  const Botao({Key? key, required this.acao, required this.nome, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: acao, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              nome,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
        
      ),
    );
  }
}