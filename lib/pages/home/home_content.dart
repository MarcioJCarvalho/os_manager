import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:os_manager/pages/home/widgets/card_os.dart';
import 'package:os_manager/pages/home/widgets/card_tecnico.dart';
import 'package:os_manager/utils/colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.white,
          child: Row(
            children: [
              CardOs(),
              CardTecnico(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: secundaryColor,
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: primaryColor,
        child: const Icon(Ionicons.add),
      ),
    );
  }
}
