import 'package:flutter/material.dart';

Color primaryColor = const Color.fromARGB(255, 12, 93, 190);
Color secundaryColor = const Color.fromARGB(255, 79, 136, 244);
Color grayColor = const Color.fromRGBO(242, 247, 250, 1);
Color greyText = const Color.fromRGBO(27, 27, 27, 1);
Color backgroundColor = const Color.fromARGB(255, 79, 136, 244);
Color dangerColor = const Color.fromARGB(255, 238, 85, 85);
LinearGradient backgroundGradient = const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromARGB(255, 12, 93, 190),
      Color.fromARGB(255, 79, 136, 244),
    ]);

MaterialColor graySwatch = const MaterialColor(0xFFCED2D5, {
  50: const Color(0xFFF2F7FA),
  100: const Color(0xFFCED2D5),
  200: const Color(0xFFAAAEB0),
  300: const Color(0xFF87898B),
  500: const Color(0xFF636465),
  600: const Color(0xFF3F4040),
  700: const Color(0xFF1B1B1B),
  800: const Color(0xFF1B1B1B),
  900: const Color(0xFF1B1B1B),
});

MaterialColor blueSwatch = const MaterialColor(0xFF4F88F4, {
  50: const Color(0xFFF2F7FA),
  100: const Color(0xFF4F88F4),
  200: const Color(0xFF0C5DBE),
  300: const Color(0xFF87898B),
  500: const Color(0xFF636465),
  600: const Color(0xFF3F4040),
  700: const Color(0xFF1B1B1B),
  800: const Color(0xFF1B1B1B),
  900: const Color(0xFF1B1B1B),
});
