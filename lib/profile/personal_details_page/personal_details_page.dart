import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/profile/page/profile_page.dart';

class PersonalDetailsPage extends StatefulWidget {
  PersonalDetailsPage({
    super.key,
  });

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final streetController = TextEditingController();

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: const Text(
                  ' ↩ Back to profile',
                  style: TextStyle(
                    color: Colors.transparent,
                    fontSize: 14,
                    shadows: [Shadow(offset: Offset(0, -5), color: colorFont)],
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Your personal details',
                  style: TextStyle(
                    color: colorFont,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  children: [
                    TextField(
                      controller: widget.firstNameController,
                      decoration: const InputDecoration(
                        hintText: 'First Name',
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
                      controller: widget.lastNameController,
                      decoration: const InputDecoration(
                        hintText: 'Last Name',
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
                      controller: widget.cityController,
                      decoration: const InputDecoration(
                        hintText: 'City',
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
                      controller: widget.zipCodeController,
                      decoration: const InputDecoration(
                        hintText: 'Zip code',
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
                      controller: widget.streetController,
                      decoration: const InputDecoration(
                        hintText: 'Street',
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: colorFont,
                        backgroundColor: Colors.yellow,
                      ),
                      onPressed: () {},
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
