import 'package:flutter/material.dart';

class ThemeConfig {
  static ColorScheme colorScheme =
      ColorScheme.fromSeed(seedColor: Colors.green);

  static ThemeData getLight() => ThemeData(
        colorScheme: colorScheme.copyWith(
          background: Colors.white,
          surface: Colors.green[200],
          onSurface: Colors.green[900],
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.green[700],
          indicatorColor: Colors.green[700],
          unselectedLabelColor: Colors.green[500],
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.green[200],
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.green[900]?.withOpacity(0.5),
        ),
      );
  static ThemeData getDark() => ThemeData(
        colorScheme: colorScheme.copyWith(
          background: Colors.black,
          surface: Colors.green[900],
          onSurface: Colors.green[200],
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.green[100],
          indicatorColor: Colors.green[100],
          unselectedLabelColor: colorScheme.surface.withOpacity(0.5),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.green[900],
          selectedItemColor: Colors.green[200],
          unselectedItemColor: Colors.green[200]?.withOpacity(0.5),
        ),
      );
}
