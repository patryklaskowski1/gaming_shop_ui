import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/widgets/app_bar.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';
import 'package:gaming_shop_ui/itemsModel/laptop_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/pcs_view_model.dart';

class PcsLaptopsCategoryPage extends StatefulWidget {
  const PcsLaptopsCategoryPage({
    super.key,
  });

  @override
  State<PcsLaptopsCategoryPage> createState() => _PcsLaptopsCategoryPageState();
}

class _PcsLaptopsCategoryPageState extends State<PcsLaptopsCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BackDrawerMenu(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarView(),
      ),
      body: Column(
        children: [
          const GuidesView(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: GridView.count(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.08),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 5,
                children: const [
                  LaptopViewModel(),
                  PcsViewModel(),
                  LaptopViewModel(),
                  PcsViewModel(),
                  LaptopViewModel(),
                  PcsViewModel(),
                  LaptopViewModel(),
                  PcsViewModel(),
                  LaptopViewModel(),
                  PcsViewModel(),
                  LaptopViewModel(),
                  PcsViewModel(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBarDesign(),
    );
  }
}
