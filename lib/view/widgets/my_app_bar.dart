import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
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
              child: SizedBox(
                  width: 20,
                  child: Badge(
                    isLabelVisible: true,
                    backgroundColor: dangerColor,
                    label: const Text(
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
    ]);
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}