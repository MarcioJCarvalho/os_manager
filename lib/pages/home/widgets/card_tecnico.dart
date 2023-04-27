import 'package:flutter/material.dart';

class CardTecnico extends StatelessWidget {
  const CardTecnico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.grey[100],
              child: Container(
                height: 145,
                width: 145,
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    "3",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Técnicos ativos",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
