import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeData getTheme() => ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.greenAccent,
          secondary: Colors.deepPurpleAccent,
        ),
      );
}
