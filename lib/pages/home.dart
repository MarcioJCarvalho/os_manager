import 'package:flutter/material.dart';
import 'package:os_manager/menu.dart';
import 'package:os_manager/pages/init.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: isMobile,
          title: const Text('Home'),
        ),
        drawer: const Menu(),
        body: isMobile
            ? const Init()
            : Row(
                children: [
                  Menu(),
                  const Expanded(child: Init()),
                ],
              ),
      );
    });
  }
}
