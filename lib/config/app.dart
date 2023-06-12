import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_manager/view/auto_cadastro/auto_cadastro.dart';
import 'package:os_manager/view/home/home.dart';
import 'package:os_manager/view/login/login.dart';
import 'package:os_manager/view/splash.dart';
import 'package:os_manager/utils/colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OS Manager',
      theme: ThemeData(primarySwatch: blueSwatch),
      routes: {
        '/': (context) => const Splash(),
        'home': (context) => const Home(),
        'login': (context) => const Login(),
        'auto_cadastro': (context) => const AutoCadastro(),
      },
    );
  }
}
