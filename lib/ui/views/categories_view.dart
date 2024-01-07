import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  static const String name = 'CategoriesView';
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Categories'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Income',
              ),
              Tab(
                text: 'Expense',
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
            ],
          ),
        ));
  }
}
