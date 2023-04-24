import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:os_manager/utils/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _profile(),
            _options(),
          ],
        ),
      ]),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {
        // abrir a drwaer
      },
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(left: 20, top: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: secundaryColor),
        child: IconButton(
          iconSize: 18,
          onPressed: () {},
          icon: const Icon(Ionicons.person_outline),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Ionicons.notifications)),
      ],
    );
  }
}
