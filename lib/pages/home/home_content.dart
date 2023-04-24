import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/pages/home/widgets/card_os.dart';
import 'package:os_manager/pages/home/widgets/card_tecnico.dart';
import 'package:os_manager/utils/colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardOs(),
              CardTecnico(),
            ],
          ),
        ),
      ),
      floatingActionButton: _actionButton(),
    );
  }

  FloatingActionButton _actionButton(){
    return FloatingActionButton(
        hoverColor: secundaryColor,
        tooltip: "Criar nova OS",
        onPressed: () {
          // Navegar para cadastro de OS
        },
        backgroundColor: primaryColor,
        child: const Icon(LineIcons.medicalNotes),
      );
  }

}
