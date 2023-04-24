import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_manager/pages/cliente/lista.dart';
import 'package:os_manager/pages/colaborador/lista.dart';
import 'package:os_manager/pages/equipamento/lista.dart';
import 'package:os_manager/pages/home/home.dart';
import 'package:os_manager/pages/login.dart';
import 'package:os_manager/pages/ocorrencia/lista.dart';
import 'package:os_manager/pages/os/lista.dart';
import 'package:os_manager/pages/splash.dart';
import 'package:os_manager/pages/tecnico/lista.dart';
import 'package:os_manager/utils/colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: primaryColor,
          systemNavigationBarColor: primaryColor,
        ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Os Manager',
      theme: ThemeData(primarySwatch: blueSwatch),
      routes: {
        "/": (context) => const Splash(),
        "home": (context) => const Home(),
        "login": (context) => const Login(),
        "osLista": (context) => const OsLista(),
        "tecnicoLista": (context) => const TecnicoLista(),
        "clienteLista": (context) => const ClienteLista(),
        "colaboradorLista": (context) => const ColaboradorLista(),
        "ocorrenciaLista": (context) => const OcorrenciaLista(),
        "equipamentoLista": (context) => const EquipamentoLista(),
      },
    );
  }
}
