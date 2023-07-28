  import 'package:flutter/material.dart';
import 'package:os_manager/datebase/sqlite/dao/equipamento_dao_impl.dart';
import 'package:os_manager/dto/equipamento_dto.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/equipamento_interface.dart';
import 'package:os_manager/view/equipamento/cadastro/widgets/nome_equipamento.dart';
import 'package:os_manager/view/widgets/botao.dart';
import 'package:os_manager/view/widgets/my_app_bar.dart';

class EquipamentoCadastro extends StatefulWidget {
  const EquipamentoCadastro({Key? key}) : super(key: key);

  @override
  State<EquipamentoCadastro> createState() => _EquipamentoCadastroState();
}

class _EquipamentoCadastroState extends State<EquipamentoCadastro> {
  final nomeEquipamento = NomeEquipamento(controller: TextEditingController());
  final formKey = GlobalKey<FormState>();
  dynamic id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                nomeEquipamento,
                const SizedBox(height: 25),
                botao(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget botao(BuildContext context) {
    late UsuarioDTO usuarioDTO;
    usuarioDTO = ModalRoute.of(context)!.settings.arguments as UsuarioDTO;
    return Botao(
      context: context,
      nome: 'Salvar',
      acao: () async {
        var formState = formKey.currentState;
        if (formState != null && formState.validate()) {
          var equipamento = preencher();
          EquipamentoInterface equipamentoDAOImpl = EquipamentoDAOImpl();
          equipamentoDAOImpl.salvarPorUsuarioID(equipamento, usuarioDTO.id);
          Navigator.pop(context);
        }
      },
    );
  }

  EquipamentoDTO preencher(){
    return EquipamentoDTO(
      id: id,
      nome: nomeEquipamento.nomeEquipamentoController.text
    );
  }
}