import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/favorite_page/favorite_page.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:gaming_shop_ui/profile/profile_page.dart';
import 'package:gaming_shop_ui/serach_page/serach_page.dart';
import 'package:gaming_shop_ui/shopping_cart_page/shopping_cart_page.dart';

class BottomNavigatorBarDesign extends StatefulWidget {
  const BottomNavigatorBarDesign({
    super.key,
  });

  @override
  State<BottomNavigatorBarDesign> createState() =>
      _BottomNavigatorBarDesignState();
}

class _BottomNavigatorBarDesignState extends State<BottomNavigatorBarDesign> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit()..start(),
      child: BlocBuilder<RootPageCubit, RootPageState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  color: colorFont,
                  icon: const Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    );
                  },
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchPage(),
                          ),
                        );
                      },
                    );
                  },
                  color: colorFont,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ShoppingCartPage(),
                          ),
                        );
                      },
                    );
                  },
                  color: colorFont,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FavoritePage(),
                          ),
                        );
                      },
                    );
                  },
                  color: colorFont,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                        if (state.user?.email == null) {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        }
                      },
                    );
                  },
                  color: colorFont,
                ),
                label: "",
              ),
            ],
            onTap: (index) => setState(
              () {
                selectedIndex = index;
              },
            ),
            currentIndex: selectedIndex,
          );
        },
      ),
    );
  }
}
