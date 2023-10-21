import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit()..start(),
      child: BlocBuilder<RootPageCubit, RootPageState>(
        builder: (context, state) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: const Text(
                            ' ↩ Back to Shop',
                            style: TextStyle(
                              color: Colors.transparent,
                              fontSize: 14,
                              shadows: [
                                Shadow(offset: Offset(0, -5), color: colorFont)
                              ],
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.yellow,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: colorFont,
                              backgroundColor: Colors.yellow,
                            ),
                            onPressed: () {
                              context.read<RootPageCubit>().signOut();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: const Text('Log out'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage('images/avatar.jpg'),
                              maxRadius: 50,
                            ),
                            Positioned(
                              bottom: -10,
                              left: 65,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100.0),
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        Column(
                          children: [
                            const Text(
                              'Account E-mail :',
                              style: TextStyle(
                                color: Colors.transparent,
                                fontSize: 15,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -5), color: colorFont)
                                ],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.yellow,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${state.user?.email}',
                              style: const TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
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
        },
      ),
    );
  }
}
