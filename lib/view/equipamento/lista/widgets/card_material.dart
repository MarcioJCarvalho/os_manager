import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMaterial extends StatelessWidget {
  String nome;
  CardMaterial({Key? key, required this.nome}) : super(key: key);

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
                        Text(nome,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 3),
                      ],
                    ),
                  ),
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