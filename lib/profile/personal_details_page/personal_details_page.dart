import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class PersonalDetailsPage extends StatefulWidget {
  PersonalDetailsPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: widget.emailController,
                decoration: const InputDecoration(
                  hintText: 'Addres E-mail',
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.yellow,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: colorFont,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: widget.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.yellow,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: colorFont,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
