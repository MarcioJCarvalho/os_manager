import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_manager/pages/cliente/cliente_detalhes.dart';
import 'package:os_manager/pages/cliente/cliente_lista.dart';
import 'package:os_manager/pages/cliente/cliente_cadastro.dart';
import 'package:os_manager/pages/colaborador/lista.dart';
import 'package:os_manager/pages/equipamento/lista.dart';
import 'package:os_manager/pages/home/home.dart';
import 'package:os_manager/pages/login.dart';
import 'package:os_manager/pages/ocorrencia/lista.dart';
import 'package:os_manager/pages/os/cadastro.dart';
import 'package:os_manager/pages/os/os_detalhes.dart';
import 'package:os_manager/pages/os/os_lista.dart';
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
      title: 'OS Manager',
      theme: ThemeData(primarySwatch: blueSwatch),
      routes: {
        "/": (context) => const Splash(),
        "home": (context) => const Home(),
        "login": (context) => const Login(),
        "osLista": (context) => const OsLista(),
        "osCadastro": (context) => const CadastroOS(),
        "osDetalhes": (context) => const OsDetalhes(),
        "tecnicoLista": (context) => const TecnicoLista(),
        "clienteLista": (context) => const ClienteLista(),
        "clienteCadastro": (context) => const ClienteCadastro(),
        "clienteDetalhes": (context) => const ClienteDetalhes(),
        "colaboradorLista": (context) => const ColaboradorLista(),
        "ocorrenciaLista": (context) => const OcorrenciaLista(),
        "equipamentoLista": (context) => const EquipamentoLista(),
      },
    );
  }
}
