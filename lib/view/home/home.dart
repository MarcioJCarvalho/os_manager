import 'package:flutter/material.dart';
import 'package:os_manager/datebase/sqlite/dao/os_dao_impl.dart';
import 'package:os_manager/dto/os_dto.dart';
import 'package:os_manager/interface/os_interface.dart';
import 'package:os_manager/view/widgets/card_os.dart';
import 'package:os_manager/view/widgets/menu.dart';
import 'package:os_manager/view/widgets/my_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final OSInterface osDaoImpl = OSDAOImpl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const Menu(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: listarTodosPorIdUsuario(),
          builder: (context, AsyncSnapshot<List<OSDTO>> lista) {
            if (!lista.hasData) return const CircularProgressIndicator();
            if (lista.data == null) {
              return const Text('Não há ordens de serviço...');
            }
            List<OSDTO> listaOS = lista.data!;
            return ListView.builder(
              itemCount: listaOS.length,
              itemBuilder: (context, indice) {
                var os = listaOS[indice];
                return criarItemLista(context, os);
              },
            );
          },
        ),
      ),
        // Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Padding(padding: const EdgeInsets.all(8)),
        //       Text(
        //         "Ordens de Serviço",
        //         style: TextStyle(
        //           fontSize: 16,
        //           fontFamily: 'Montserrat',
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ],
        //   ),
      );
  }

  Widget criarItemLista(BuildContext context, OSDTO os) {
    return CardOS(
      cliente: os.clienteDTO.nome,
      telefone: os.clienteDTO.telefone,
      endereco: os.clienteDTO.endereco,
      horario: os.horario,
      data: os.data,
    );
  }
  
  Future<List<OSDTO>> listarTodosPorIdUsuario() {
    setState(() {});
    return osDaoImpl.listarTodosPorIdUsuario(1);
  }
}
