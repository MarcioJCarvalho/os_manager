import 'package:flutter/material.dart';
import 'package:os_manager/menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxHeight < 600;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home'),
        ),
        drawer: const Menu(),
      );
    });
  }
}
