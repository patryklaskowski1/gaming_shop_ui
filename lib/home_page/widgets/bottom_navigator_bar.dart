import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class BottomNavigatorBarDesign extends StatefulWidget {
  const BottomNavigatorBarDesign({
    super.key,
  });

  @override
  State<BottomNavigatorBarDesign> createState() => _BottomNavigatorBarDesignState();
}

class _BottomNavigatorBarDesignState extends State<BottomNavigatorBarDesign> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
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
            Icons.shopping_cart,
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
      onTap: (index) => setState(
        () {
          selectedIndex = index;
        },
      ),
      currentIndex: selectedIndex,
    );
  }
}
