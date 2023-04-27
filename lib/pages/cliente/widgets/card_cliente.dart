import 'package:flutter/material.dart';
import 'package:os_manager/rotas.dart';

// ignore: must_be_immutable
class CardCliente extends StatelessWidget {
  String cliente;
  String endereco;

  CardCliente({Key? key, required this.cliente, required this.endereco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        RawMaterialButton(
          fillColor: Colors.white,
          onPressed: () => {
            Navigator.pushNamed(context, Rotas.CLIENTE_DETALHES),
          },
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: IntrinsicHeight(
            child: Row(
              children: [
                SizedBox(height: 80, width: 30),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cliente,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 3),
                      Text(endereco,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
