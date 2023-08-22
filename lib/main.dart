import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaiming Shop UI',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
