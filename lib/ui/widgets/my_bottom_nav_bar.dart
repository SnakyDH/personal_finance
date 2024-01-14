import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/views/routes_views.dart';
import 'package:personal_finance/ui/layout/home_layout.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.goNamed(HomeLayout.name);
        break;
      case 1:
        context.goNamed(CategoriesView.name);
        break;
      case 2:
        context.goNamed(BudgetView.name);
        break;
      case 3:
        context.goNamed(HistoryView.name);
        break;
      default:
    }
  }

  int _getCurrentIndex(
    BuildContext context,
  ) {
    final String? path = GoRouterState.of(context).fullPath;
    switch (path) {
      case '/home':
        return 0;
      case '/categories':
        return 1;
      case '/budget':
        return 2;
      case '/history':
        return 3;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (indexSelected) => _onItemTapped(context, indexSelected),
      currentIndex: _getCurrentIndex(context),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          activeIcon: Icon(Icons.category),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          activeIcon: Icon(Icons.account_balance_wallet),
          label: 'Budget',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            activeIcon: Icon(Icons.history),
            label: 'History'),
      ],
    );
  }
}
