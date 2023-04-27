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
        SizedBox(height: 10),
        RawMaterialButton(
          fillColor: Colors.white,
          onPressed: () => {},
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: IntrinsicHeight(
            child: Row(
              children: [
                SizedBox(height: 80, width: 30),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 3),
                      Text(endereco,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(data,
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
    // Container(
    //   margin: const EdgeInsets.all(5),
    //   height: 100,
    //   padding: const EdgeInsets.all(5),
    //   decoration: BoxDecoration(
    //     color: Colors.grey.shade300,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Row(
    //     children: [
    //       Column(
    //         children: [
    //           Text(cliente),
    //           Text(endereco),
    //           Text(data),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
