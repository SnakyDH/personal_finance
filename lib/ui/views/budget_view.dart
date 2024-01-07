import 'package:flutter/material.dart';

class BudgetView extends StatelessWidget {
  static const String name = 'BudgetView';
  const BudgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Budget')),
      body: const Center(
        child: Text('Budget'),
      ),
    );
  }
}
