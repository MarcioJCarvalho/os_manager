import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppTheme {
  bool isDark = false;

  ThemeData get themeData {
    TextTheme txtTheme = const TextTheme(
      displayLarge: TextStyle(backgroundColor: Colors.red, fontSize: 500),
      displayMedium: TextStyle(backgroundColor: Colors.red, fontSize: 500),
      titleMedium: TextStyle(backgroundColor: Colors.red, fontSize: 500),
      bodyLarge: TextStyle(fontSize: 20),
      bodyMedium: TextStyle(backgroundColor: Colors.red, fontSize: 500),
      bodySmall: TextStyle(backgroundColor: Colors.red, fontSize: 500),
      labelLarge: TextStyle(color: Colors.white, fontSize: 50, backgroundColor: Colors.red),
      labelMedium: TextStyle(color: Colors.white, fontSize: 40, backgroundColor: Colors.red),
      labelSmall: TextStyle(color: Colors.white, fontSize: 25, backgroundColor: Colors.red),
    );
    ColorScheme colorScheme = ColorScheme(
        brightness: isDark == true ? Brightness.dark : Brightness.light,
        primary: isDark == true ? Colors.black : Colors.white,
        secondary: isDark == true ? Colors.black : Colors.red,
        background: isDark == true ? Colors.black : Colors.blue,
        surface: isDark == true ? Colors.black : Colors.blue,
        onBackground: isDark == true ? Colors.black : Colors.white,
        onSurface: isDark == true ? Colors.black : Colors.white,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    return ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme, useMaterial3: true);

  }
}