import 'package:flutter/material.dart';
import 'package:personal_finance/ui/widgets/my_app_bar.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
      ),
      body: FloatingActionButton(
        onPressed: () {},
        child: const Text('data'),
      ),
    );
  }
}
