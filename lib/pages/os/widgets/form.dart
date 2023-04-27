import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/rotas.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _nomeCliente = TextEditingController();
  final _enderecoCliente = TextEditingController();
  final _dataAgendamento = TextEditingController();
  final _form = GlobalKey<FormState>();

  _salvar(BuildContext context) {
    if (_form.currentState!.validate()) {
      // futuramente salvar o cadastro
      Navigator.pushNamed(context, Rotas.HOME);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Ordem de serviço cadastrada com sucesso!')),
      );
    }
  }

  _cancelar() {
    Navigator.pushNamed(context, Rotas.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // para recuperar os dados do form posteriormente
      key: _form,
      child: SingleChildScrollView(
        child: Column(children: [
          TextFormField(
            controller: _nomeCliente,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Cliente',
                prefix: Icon(LineIcons.user)),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'O nome do cliente é obtigatório';
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _enderecoCliente,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Local do Serviço',
                prefix: Icon(LineIcons.mapMarker)),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'O local do Serviço é obtigatório';
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _dataAgendamento,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Data e horário',
                prefix: Icon(LineIcons.calendarWithDayFocus)),
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if (value!.isEmpty) {
                return 'A data do agendamento é obtigatório';
              }
            },
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 24),
            child: ElevatedButton(
              onPressed: () {
                _salvar(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Salvar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(LineIcons.save)
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              _cancelar();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cancelar',
                  style: TextStyle(fontSize: 18, color: Colors.redAccent),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
