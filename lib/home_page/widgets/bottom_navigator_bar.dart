import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.yellow,
      selectedIconTheme: const IconThemeData(
        color: Colors.yellow,
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: colorFont,
          ),
          label: "",
        ),
      ],
    );
  }
}
