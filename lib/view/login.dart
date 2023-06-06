import 'package:flutter/material.dart';
import 'package:os_manager/utils/rotas.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ElevatedButton(
        child: const Text('Fazer Login'),
        onPressed: () {
          Navigator.pushNamed(context, Rotas.HOME);
        },
      ),
    );
  }
}
