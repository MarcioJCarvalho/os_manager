import 'package:flutter/material.dart';
import 'package:os_manager/dao/os_dao_impl.dart';
import 'package:os_manager/dto/os.dart';
import 'package:os_manager/interface/os_interface_dao.dart';
import 'package:os_manager/pages/os/widgets/card.dart';

class ListOs extends StatefulWidget {
  const ListOs({Key? key}) : super(key: key);

  @override
  State<ListOs> createState() => _ListOsState();
}

class _ListOsState extends State<ListOs> {
  final String cliente = '';

  final String data = '';

  final String endereco = '';

  final OSInterfaceDAO osDaoImpl = OSDAOImpl();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: FutureBuilder(
        future: listarTodos(),
        builder: (context, AsyncSnapshot<List<OS>> lista) {
          if (!lista.hasData) return const CircularProgressIndicator();
          if (lista.data == null) {
            return const Text('Não há ordens de serviço...');
          }
          List<OS> listaOS = lista.data!;
          return ListView.builder(
            itemCount: listaOS.length,
            itemBuilder: (context, indice) {
              var os = listaOS[indice];
              return criarItemLista(context, os);
            },
          );
        },
      ),
    );
  }

  Future<List<OS>> listarTodos() {
    setState(() {});
    return osDaoImpl.listarTodos();
  }

  Widget criarItemLista(BuildContext context, OS os) {
    return CardOS(
      cliente: os.nomeCliente,
      data: os.telefoneCliente,
      endereco: os.enderecoCliente,
    );
  }
}
