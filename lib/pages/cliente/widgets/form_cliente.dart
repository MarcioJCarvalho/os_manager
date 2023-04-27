import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/rotas.dart';

class FormCliente extends StatefulWidget {
  const FormCliente({Key? key}) : super(key: key);

  @override
  State<FormCliente> createState() => _FormClienteState();
}

class _FormClienteState extends State<FormCliente> {
  final _nomeCliente = TextEditingController();
  final _enderecoCliente = TextEditingController();
  final _form = GlobalKey<FormState>();

  _salvar(BuildContext context) {
    if (_form.currentState!.validate()) {
      // futuramente salvar o cadastro
      Navigator.pushNamed(context, Rotas.CLIENTE_LISTA);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cliente cadastrado com sucesso!')),
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
                labelText: 'Nome',
                prefix: Icon(LineIcons.user)),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'O nome do é obtigatório';
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
                labelText: 'Endereço',
                prefix: Icon(LineIcons.mapMarker)),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'O endereço é obtigatório';
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
