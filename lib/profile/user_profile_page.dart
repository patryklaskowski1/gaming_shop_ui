import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text('Back to Shop'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    child: const Text('Log out'),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.jpg'),
                    maxRadius: 50,
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text('Account E-mail :'),
                      SizedBox(height: 10),
                      Text('x'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.yellow,
            ),
            const Text('My personal details'),
            const Divider(
              color: Colors.yellow,
            ),
            const Text('My orders'),
            const Divider(
              color: Colors.yellow,
            ),
            const Text('My opinions'),
            const Divider(
              color: Colors.yellow,
            ),
            const Text('My returns'),
            const Divider(
              color: Colors.yellow,
            ),
            const Text('Help center'),
            const Divider(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    ));
  }
}
