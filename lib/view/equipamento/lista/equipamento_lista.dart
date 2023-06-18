import 'package:flutter/material.dart';
import 'package:os_manager/datebase/sqlite/dao/equipamento_dao_impl.dart';
import 'package:os_manager/dto/equipamento_dto.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/equipamento_interface.dart';
import 'package:os_manager/utils/rotas.dart';
import 'package:os_manager/view/widgets/menu.dart';
import 'package:os_manager/view/widgets/my_app_bar.dart';
import 'package:os_manager/view/equipamento/lista/widgets/card_material.dart';

class EquipamentoLista extends StatefulWidget {
  const EquipamentoLista({Key? key}) : super(key: key);

  @override
  State<EquipamentoLista> createState() => _EquipamentoListaState();
}

class _EquipamentoListaState extends State<EquipamentoLista> {
  final EquipamentoInterface equipamentoDAOImpl = EquipamentoDAOImpl();
  @override
  Widget build(BuildContext context) {
    late UsuarioDTO usuarioDTO;
    usuarioDTO = ModalRoute.of(context)!.settings.arguments as UsuarioDTO;
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const Menu(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: listarTodosPorIdUsuario(usuarioDTO.id),
          builder: (context, AsyncSnapshot<List<EquipamentoDTO>> lista) {
            if (lista.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (lista.data!.isEmpty) {
              return const Center(child: Text('Não há equipamentos...'));
            }
            List<EquipamentoDTO> listaEquipamento = lista.data!;
            return ListView.builder(
              itemCount: listaEquipamento.length,
              itemBuilder: (context, indice) {
                var equipamento = listaEquipamento[indice];
                return criarItemLista(context, equipamento);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Rotas.EQUIPAMENTO_CADASTRO, arguments: usuarioDTO),
        tooltip: 'Cadastrar Equipamento',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget criarItemLista(BuildContext context, EquipamentoDTO equipamento) {
    return CardMaterial(
      nome: equipamento.nome,
    );
  }

  Future<List<EquipamentoDTO>> listarTodosPorIdUsuario(dynamic usuarioId) {
    setState(() {});
    return equipamentoDAOImpl.listarTodosPorIdUsuario(usuarioId);
  }
}
