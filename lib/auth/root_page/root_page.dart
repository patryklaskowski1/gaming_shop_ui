import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:gaming_shop_ui/auth/login_page/login_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit()..start(),
      child: BlocBuilder<RootPageCubit, RootPageState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return LoginPage();
          }
          return const HomePage();
        },
      ),
    );
  }
}
