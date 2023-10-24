import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:gaming_shop_ui/profile/page/profile_page.dart';

class UserOpinionPage extends StatefulWidget {
  const UserOpinionPage({
    super.key,
  });

  @override
  State<UserOpinionPage> createState() => _UserOpinionPageState();
}

class _UserOpinionPageState extends State<UserOpinionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Leave your opinions ',
                    style: TextStyle(
                      fontSize: 22,
                      color: colorFont,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 160,
                    width: 300,
                    color: const Color.fromARGB(255, 71, 71, 71),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                color: colorFont,
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "You don't have a product to rate right now",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'After purchasing a product, leave your opinions to help others when choosing',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorFont,
                            backgroundColor: Colors.yellow,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: const Text('Back to shop'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    color: Colors.yellow,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Opinions posted ',
                    style: TextStyle(
                      fontSize: 24,
                      color: colorFont,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 50),
                    child: Container(
                      height: 120,
                      width: 280,
                      color: const Color.fromARGB(255, 71, 71, 71),
                      child: const SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "You haven't bought any product yet.",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
