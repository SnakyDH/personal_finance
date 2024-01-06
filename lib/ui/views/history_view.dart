import 'package:flutter/material.dart';
import 'package:personal_finance/ui/widgets/my_app_bar.dart';

class HistoryView extends StatelessWidget {
  static const String name = 'HistoryView';
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: 'History',
      ),
      body: const Center(
        child: Text('History'),
      ),
    );
  }
}
