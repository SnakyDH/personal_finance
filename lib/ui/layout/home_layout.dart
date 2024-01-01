import 'package:flutter/material.dart';
import 'package:personal_finance/ui/widgets/my_app_bar.dart';

class HomeLayout extends StatelessWidget {
  static const String name = 'HomeLayout';
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBar: AppBar()),
      body: const Center(
        child: Text('HomeLayout'),
      ),
    );
  }
}
