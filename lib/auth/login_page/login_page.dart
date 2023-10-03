import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign in to account',
                style: TextStyle(
                  color: colorFont,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: widget.emailController,
                decoration: const InputDecoration(
                  hintText: 'addres E-mail',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: widget.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'password',
                ),
              ),
              const SizedBox(height: 20),
              Text(
                errorMessage,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 231, 32, 18),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: widget.emailController.text,
                          password: widget.passwordController.text,
                        );
                      } catch (error) {
                        setState(
                          () {
                            errorMessage = 'Invalid Login : ${error}';
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Sign in ',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up ',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
