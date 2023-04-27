import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/menu.dart';
import 'package:os_manager/pages/cliente/cadastro_content.dart';
import 'package:os_manager/utils/colors.dart';

class ClienteCadastro extends StatelessWidget {
  const ClienteCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        appBar: AppBar(
            centerTitle: isMobile,
            backgroundColor: primaryColor,
            automaticallyImplyLeading: isMobile,
            // logo
            title: const Text('OS Manager'),
            actions: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                          width: 20,
                          child: Badge(
                            showBadge: true,
                            badgeColor: dangerColor,
                            badgeContent: const Text(
                              '3',
                              style: TextStyle(color: Colors.white),
                            ),
                            child: const Icon(
                              LineIcons.bell,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ]),
        drawer: const Menu(),
        body: isMobile
            ? const CadastrContent()
            : Row(
                children: const <Widget>[
                  Menu(),
                  Expanded(child: CadastrContent()),
                ],
              ),
      );
    });
  }
}
