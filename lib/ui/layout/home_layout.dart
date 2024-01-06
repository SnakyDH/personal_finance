import 'package:flutter/material.dart';
import 'package:personal_finance/ui/widgets/my_bottom_nav_bar.dart';

class HomeLayout extends StatelessWidget {
  static const String name = 'HomeLayout';
  final Widget childView;

  const HomeLayout({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
