import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:os_manager/menu.dart';
import 'package:os_manager/pages/home/home_content.dart';
import 'package:os_manager/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
          title: const Text('Os Manager'),
          actions: [
            Icon(Ionicons.notifications_outline),
             Badge(),
          ],
        ),
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
}
