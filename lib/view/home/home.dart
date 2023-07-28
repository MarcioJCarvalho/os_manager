import 'package:flutter/material.dart';
import 'package:os_manager/datebase/sqlite/dao/os_dao_impl.dart';
import 'package:os_manager/dto/os_dto.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/os_interface.dart';
import 'package:os_manager/utils/rotas.dart';
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
    late UsuarioDTO usuarioDTO = ModalRoute.of(context)!.settings.arguments as UsuarioDTO;

    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const Menu(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: listarTodosPorIdUsuario(usuarioDTO.id),
          builder: (context, AsyncSnapshot<List<OSDTO>> lista) {
            if (lista.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (lista.data!.isEmpty) {
              return const Center(child: Text('Não há ordens de serviço...'));
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
      onPressed: () => Navigator.pushNamed(context, Rotas.DETALHES_OS, arguments: os),
      cliente: os.clienteDTO.nome,
      telefone: os.clienteDTO.telefone,
      endereco: os.clienteDTO.endereco,
      horario: os.horario,
      data: os.data,
    );
  }

  Future<List<OSDTO>> listarTodosPorIdUsuario(dynamic usuarioId) {
    setState(() {});
    return osDaoImpl.listarTodosPorIdUsuario(usuarioId);
  }
}
