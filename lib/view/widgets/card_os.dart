import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardOS extends StatefulWidget {
  final VoidCallback onPressed;
  String cliente;
  String endereco;
  String telefone;
  String horario;
  String data;

  CardOS(
      {Key? key,
      required this.onPressed,
      required this.cliente,
      required this.endereco,
      required this.telefone,
      required this.horario,
      required this.data})
      : super(key: key);

  @override
  State<CardOS> createState() => _CardOSState();
}

class _CardOSState extends State<CardOS> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        RawMaterialButton(
          fillColor: Colors.white,
          onPressed: widget.onPressed,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.cliente,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 3),
                      Text(widget.endereco, style: const TextStyle(fontSize: 14)),
                      Text(widget.telefone, style: const TextStyle(fontSize: 14)),
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
                          Text(widget.horario,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14)),
                          Text(widget.data,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14)),
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
