import 'package:flutter/material.dart';

class MyAppTheme {
  bool isDark = false;

  ThemeData get themeData {
    TextTheme txtTheme = const TextTheme(
      displayLarge: TextStyle(color: Colors.black87, fontSize: 18),
      displayMedium: TextStyle(color: Colors.black87, fontSize: 16),
      titleMedium: TextStyle(color: Colors.black87, fontSize: 14),
      bodyLarge: TextStyle(color: Colors.black87, fontSize: 18),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 16),
      bodySmall: TextStyle(color: Colors.black87, fontSize: 14),
      labelLarge: TextStyle(color: Colors.black87, fontSize: 18),
      labelMedium: TextStyle(color: Colors.black87, fontSize: 16),
      labelSmall: TextStyle(color: Colors.black87, fontSize: 14),
    );
    ColorScheme colorScheme = ColorScheme(
        brightness: isDark == true ? Brightness.dark : Brightness.light,
        primary: isDark == true ? Colors.black : Colors.white,
        secondary: isDark == true ? Colors.black : Colors.red,
        background: isDark == true ? Colors.white10 : Colors.purpleAccent,
        surface: isDark == true ? Colors.black : Colors.blue.shade300,
        onBackground: isDark == true ? Colors.black : Colors.white,
        onSurface: isDark == true ? Colors.black : Colors.white,
        onError: Colors.green,
        onPrimary: Colors.green,
        onSecondary: Colors.green,
        error: Colors.red.shade400);

    return ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme, useMaterial3: true);

  }
}