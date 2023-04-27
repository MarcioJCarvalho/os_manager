import 'package:flutter/material.dart';
import 'package:os_manager/pages/cliente/widgets/card_cliente.dart';

class ListCliente extends StatelessWidget {
  const ListCliente({Key? key}) : super(key: key);

  final String cliente = '';
  final String endereco = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CardCliente(
                  cliente: 'Cliente1',
                  endereco: 'Av Principal',
                ),
                CardCliente(
                  cliente: 'Cliente2',
                  endereco: 'Rua 1',
                ),
                CardCliente(
                  cliente: 'Cliente3',
                  endereco: 'Rua 2',
                ),
                CardCliente(
                  cliente: 'Cliente4',
                  endereco: 'Av Principal 2',
                ),
                CardCliente(
                  cliente: 'Cliente5',
                  endereco: 'Av Principal',
                ),
                CardCliente(
                  cliente: 'Cliente6',
                  endereco: 'Rua 3',
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
