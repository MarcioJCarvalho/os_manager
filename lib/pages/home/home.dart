import 'package:flutter/material.dart';
import 'package:os_manager/menu.dart';
import 'package:os_manager/pages/home/home_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: isMobile,
        //   title: const Text('Home'),
        // ),
        drawer: const Menu(),
        body: isMobile
            ? const HomeContent()
            : Row(
                children: [
                  Menu(),
                  const Expanded(child: HomeContent()),
                ],
              ),
      );
    });
  }

  // PreferredSize _appBar() {
  //   return PreferredSize(
  //       child: AppBar(
  //         automaticallyImplyLeading: isMobile,
  //         title: const Text('Home'),
  //       ), 
  //       preferredSize: const Size.fromHeight(0));
  // }
}
