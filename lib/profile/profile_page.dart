import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
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
          final user = state.user;
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
                          onPressed: () {
                            context.read<RootPageCubit>().signOut();
                          },
                          child: const Text('Log out'),
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
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/avatar.jpg'),
                          maxRadius: 50,
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            const Text('Account E-mail :'),
                            const SizedBox(height: 10),
                            Text('${user?.email}'),
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
