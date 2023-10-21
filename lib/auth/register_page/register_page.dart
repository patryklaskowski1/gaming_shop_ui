import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/auth/login_page/login_page.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var errorMessage = '';
  bool success = false;
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
                'Create an account',
                style: TextStyle(
                  color: colorFont,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: widget.emailController,
                decoration: const InputDecoration(
                  hintText: 'Addres E-mail',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: widget.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 10),
              Text(
                errorMessage,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 231, 32, 18),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: widget.emailController.text,
                          password: widget.passwordController.text,
                        );
                      } catch (error) {
                        setState(
                          () {
                            errorMessage = 'Invalid registration : $error';
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Sign Up  ',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Back to sign in',
                    ),
                  ),
                ],
              ),
              FlutterPwValidator(
                controller: widget.passwordController,
                minLength: 8,
                uppercaseCharCount: 1,
                numericCharCount: 2,
                specialCharCount: 1,
                normalCharCount: 3,
                width: 300,
                height: 100,
                onSuccess: () {
                  setState(() {
                    success = true;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Password is correct"),
                    ),
                  );
                },
                onFail: () {
                  setState(() {
                    success = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
