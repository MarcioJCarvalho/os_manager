import 'package:flutter/material.dart';
import 'package:os_manager/pages/os/widgets/card.dart';

class ListOs extends StatelessWidget {
  const ListOs({Key? key}) : super(key: key);

  final String cliente = '';
  final String data = '';
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
                CardOS(
                  cliente: 'Cliente1',
                  data: '10/04/2023',
                  endereco: 'Av Principal',
                ),
                CardOS(
                  cliente: 'Cliente2',
                  data: '30/04/2023',
                  endereco: 'Rua 1',
                ),
                CardOS(
                  cliente: 'Cliente3',
                  data: '15/04/2023',
                  endereco: 'Rua 2',
                ),
                CardOS(
                  cliente: 'Cliente4',
                  data: '01/04/2023',
                  endereco: 'Av Principal 2',
                ),
                CardOS(
                  cliente: 'Cliente5',
                  data: '10/04/2023',
                  endereco: 'Av Principal',
                ),
                CardOS(
                  cliente: 'Cliente6',
                  data: '05/04/2023',
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
