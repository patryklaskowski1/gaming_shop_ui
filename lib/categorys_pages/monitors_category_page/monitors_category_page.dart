import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/widgets/app_bar.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';
import 'package:gaming_shop_ui/itemsModel/monitors_view_model.dart';

class MonitorsCategoryPage extends StatefulWidget {
  const MonitorsCategoryPage({
    super.key,
  });

  @override
  State<MonitorsCategoryPage> createState() => _MonitorsCategoryPageState();
}

class _MonitorsCategoryPageState extends State<MonitorsCategoryPage> {
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
          const Divider(
            color: Colors.yellow,
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
                right: 5,
                left: 5,
              ),
              child: GridView.count(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.1),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 5,
                children: const [
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
                  MonitorsViewModel(),
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
