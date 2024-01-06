import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_finance/ui/widgets/my_app_bar.dart';

class HomeView extends StatelessWidget {
  static const String name = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: 'Home',
        icon: FontAwesomeIcons.home,
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
