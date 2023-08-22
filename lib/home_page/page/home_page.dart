import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/photo_gallery_view.dart';
import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BackDrawerMenu(),
      appBar: AppBar(
        title: const Text(
          'GaimingShop UI',
          style: TextStyle(
            color: Color.fromARGB(255, 193, 54, 244),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_outlined,
              color: Color.fromARGB(255, 193, 54, 244),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 193, 54, 244),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const TextFieldContent(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PhotoGalleryPage(),
          ),
        ],
      ),
    );
  }
}
