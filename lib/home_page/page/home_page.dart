import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/hits_of_the_week_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/last_watched_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/photo_gallery_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/recomend_view_content.dart';
import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';

import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BackDrawerMenu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: colorFont,
        ),
        title: const Text(
          'GaimingShop UI',
          style: TextStyle(
            color: colorFont,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_outlined,
              color: colorFont,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: colorFont,
            ),
          ),
        ],
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
