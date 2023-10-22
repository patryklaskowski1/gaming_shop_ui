import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/home_page/widgets/app_bar.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({
    super.key,
  });

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BackDrawerMenu(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarView(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'The cart is empty :(',
                    style: TextStyle(
                      color: colorFont,
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 220),
                    child: Divider(
                      color: Colors.yellow,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Products cost :',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: colorFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Delivery cost :',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: colorFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Total cost :',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: colorFont,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: colorFont,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: colorFont,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: colorFont,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '€',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '€',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '€',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: colorFont,
                        backgroundColor: Colors.yellow,
                        fixedSize: const Size(140, 40),
                      ),
                      onPressed: () {},
                      child: const Text('Pay'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBarDesign(),
    );
  }
}
