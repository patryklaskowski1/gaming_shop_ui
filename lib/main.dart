import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gaming_shop_ui/auth/login_page/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaiming Shop UI',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
