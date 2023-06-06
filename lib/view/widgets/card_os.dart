import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardOS extends StatelessWidget {
  String cliente;
  String endereco;
  String data;

  CardOS(
      {Key? key,
      required this.cliente,
      required this.endereco,
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
            child: Row(
              children: [
                const SizedBox(height: 80, width: 30),
                Text("8:50",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                VerticalDivider(
                  width: 50,
                  thickness: 1,
                  endIndent: 10,
                  color: Colors.grey,
                  indent: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cliente,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 3),
                      Text(endereco,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(data,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
