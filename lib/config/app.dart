import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_manager/utils/app_theme.dart';
import 'package:os_manager/view/equipamento/cadastro/equipamento_cadastro.dart';
import 'package:os_manager/view/equipamento/lista/equipamento_lista.dart';
import 'package:os_manager/view/home/detalhes.dart';
import 'package:os_manager/view/home/home.dart';
import 'package:os_manager/view/login/login.dart';
import 'package:os_manager/view/perfil/perfil_usuario.dart';
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
      // theme: MyAppTheme().themeData,
      routes: {
        '/': (context) => const Splash(),
        'home': (context) => const Home(),
        'detalhes_os': (context) => const DetalhesOS(),
        'login': (context) => const Login(),
        'equipamento_lista': (context) => const EquipamentoLista(),
        'equipamento_cadastro': (context) => const EquipamentoCadastro(),
        'perfil_usuario': (context) => const PerfilUsuario(),
      },
    );
  }
}
