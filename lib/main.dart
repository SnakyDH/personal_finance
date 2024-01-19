import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/config/firebase_options.dart';
import 'package:personal_finance/config/router_config.dart';
import 'package:personal_finance/config/theme_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Personal Finance App',
        theme: ThemeConfig.getLight(),
        darkTheme: ThemeConfig.getDark(),
        routerConfig: appRouter);
  }
}
