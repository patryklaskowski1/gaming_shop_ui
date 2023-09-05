import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/favorite_page/favorite_page.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:gaming_shop_ui/serach_page/serach_page.dart';
import 'package:gaming_shop_ui/shopping_cart_page/shopping_cart_page.dart';

class BottomNavigatorBarDesign extends StatefulWidget {
  const BottomNavigatorBarDesign({
    super.key,
  });

  @override
  State<BottomNavigatorBarDesign> createState() =>
      _BottomNavigatorBarDesignState();
}

class _BottomNavigatorBarDesignState extends State<BottomNavigatorBarDesign> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            color: colorFont,
            icon: const Icon(
              Icons.home,
            ),
            onPressed: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              );
            },
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchPage(),
                    ),
                  );
                },
              );
            },
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShoppingCartPage(),
                    ),
                  );
                },
              );
            },
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritePage(),
                    ),
                  );
                },
              );
            },
            color: colorFont,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
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
