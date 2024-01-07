import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/views/routes_views.dart';
import 'package:personal_finance/ui/layout/home_layout.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.goNamed(HistoryView.name);
        break;
      case 1:
        context.goNamed(HomeLayout.name);
        break;
      default:
    }
  }

  int _getCurrentIndex(
    BuildContext context,
  ) {
    final String? path = GoRouterState.of(context).fullPath;
    switch (path) {
      case '/history':
        return 0;
      case '/home':
        return 1;
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
            icon: Icon(Icons.history_outlined),
            activeIcon: Icon(Icons.history),
            label: 'History'),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
      ],
    );
  }
}
