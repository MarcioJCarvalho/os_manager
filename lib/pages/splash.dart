import 'package:flutter/material.dart';
import 'package:os_manager/rotas.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: ElevatedButton(
        child: const Text('Fazer Login'),
        onPressed: () {
          Navigator.pushNamed(context, Rotas.LOGIN);
        },
      ),
    );
  }
}
