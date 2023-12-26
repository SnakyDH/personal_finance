import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const MyAppBar({
    super.key,
    this.title = 'Personal Finance App',
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.greenAccent,
            ),
            Container(padding: const EdgeInsets.all(10), child: Text(title))
          ],
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent);
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
