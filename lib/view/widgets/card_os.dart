import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardOS extends StatelessWidget {
  String cliente;
  String endereco;
  String telefone;
  String horario;
  String data;

  CardOS(
      {Key? key,
      required this.cliente,
      required this.endereco,
      required this.telefone,
      required this.horario,
      required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        RawMaterialButton(
          fillColor: Colors.white,
          onPressed: () => {
            Navigator.pushNamed(context, ''),
          },
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cliente,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 3),
                        Text(endereco, style: const TextStyle(fontSize: 14)),
                        Text(telefone, style: const TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    indent: 1,
                    endIndent: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(horario,
                            style: const TextStyle(color: Colors.black, fontSize: 14)),
                        Text(data,
                            style: const TextStyle(color: Colors.black, fontSize: 14)),
                  ])),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
