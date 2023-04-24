import 'package:flutter/material.dart';

class CardOs extends StatelessWidget {
  const CardOs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "20",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 80),
                      ),
                      Text(
                        "Ordesn de serviço",
                        style: TextStyle(fontSize: 14),
                      )                      
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
