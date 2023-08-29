import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/hits_of_the_week_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/last_watched_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/photo_gallery_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/recomend_view_content.dart';
import 'package:gaming_shop_ui/home_page/widgets/app_bar.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';

import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          const TextFieldContent(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PhotoGalleryPage(),
          ),
          const RecomendViewContent(),
          const GuidesView(),
          const HitsOfTheWeekViewContent(),
          const LastWatchedViewContent(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
