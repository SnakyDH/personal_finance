import 'package:flutter/material.dart';
import 'package:personal_finance/config/router_config.dart';
import 'package:personal_finance/config/theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Personal Finance App',
        theme: ThemeConfig().getTheme(),
        routerConfig: appRouter);
  }
}
