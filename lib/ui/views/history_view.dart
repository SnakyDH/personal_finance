import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  static const String name = 'HistoryView';
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('History'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Income',
              ),
              Tab(
                text: 'Expense',
              ),
              Tab(
                text: 'Transfer',
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Income'),
              ),
              Center(
                child: Text('Expense'),
              ),
              Center(
                child: Text('Transfer'),
              ),
            ],
          ),
        ));
  }
}
