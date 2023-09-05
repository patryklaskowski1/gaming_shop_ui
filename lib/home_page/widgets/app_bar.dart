import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/shopping_cart_page/shopping_cart_page.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({
    super.key,
  });

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: colorFont,
      ),
      title: const Text(
        'GaimingShop UI',
        style: TextStyle(
          color: colorFont,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
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
          icon: const Icon(
            Icons.shopping_basket_outlined,
            color: colorFont,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: colorFont,
          ),
        ),
      ],
    );
  }
}
