import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_manager/pages/home/widgets/header.dart';
import 'package:os_manager/utils/colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(),
            ],
          ),
        ),
      ),
    );
  }
}
