import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
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
        body: ListView(children: const [TextFieldContent()]),
      ),
    );
  }
}
