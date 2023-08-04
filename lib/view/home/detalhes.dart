import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/datebase/sqlite/dao/os_dao_impl.dart';
import 'package:os_manager/dto/os_dto.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/os_interface.dart';
import 'package:os_manager/utils/rotas.dart';
import 'package:os_manager/view/widgets/botao.dart';

class DetalhesOS extends StatelessWidget {
  const DetalhesOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OSDTO os = ModalRoute.of(context)!.settings.arguments as OSDTO;
    String protocolo = os.id.toString();
    String data = os.data;
    String horario = os.horario;
    String nome = os.clienteDTO.nome;
    String telefone = os.clienteDTO.telefone;
    String email = os.clienteDTO.email;
    String endereco = os.clienteDTO.endereco;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(LineIcons.angleLeft)),
        title: const Text('Ordem de Serviço'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text("Número Protocolo: $protocolo"),
              Text("Data do agendamento: $data"),
              Text("Horário agendado: $horario"),
              const SizedBox(height: 20),
              const Text("Dados do Cliente",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Nome Cliente: $nome"),
              Text("Email: $email"),
              Text("Telefone: $telefone"),
              Text("Endereço: $endereco"),
              const SizedBox(height: 20,),
              botao(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget botao(BuildContext context) {
    return Botao(
        context: context,
        nome: 'Concluir',
        acao: () async {
          OSInterface osDaoImpl = OSDAOImpl();
          var os = preencher(context);
          await osDaoImpl.salvar(os);
          Navigator.pop(context);
        });
  }

  OSDTO preencher(BuildContext context){
    OSDTO os = ModalRoute.of(context)!.settings.arguments as OSDTO;
    return OSDTO(
        id: os.id,
        status: 'CONCLUIDO',
        horario: os.horario,
        data: os.data,
        clienteDTO: os.clienteDTO);
  }
}
