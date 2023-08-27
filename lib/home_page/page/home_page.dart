import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

import 'package:gaming_shop_ui/home_page/widgets/back_drawer_menu.dart';
import 'package:gaming_shop_ui/itemsModel/chair_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/headphones_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/keyboards_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/laptop_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/memory_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/microphones_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/monitors_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/mouse_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/others_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/pcs_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/webcam_view_model.dart';
import 'package:gaming_shop_ui/itemsModel/wires_view_model.dart';

import 'package:gaming_shop_ui/home_page/widgets/photo_gallery_view.dart';
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
            color: Color.fromARGB(255, 193, 54, 244),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_outlined,
              color: Color.fromARGB(255, 193, 54, 244),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 193, 54, 244),
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
          const Padding(
            padding: EdgeInsets.only(
              left: 5,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.recommend_outlined,
                  color: colorFont,
                  size: 32,
                ),
                SizedBox(width: 5),
                Text(
                  'RECOMEND',
                  style: TextStyle(
                    color: colorFont,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WebcamViewModel(),
                  ChairViewModel(),
                  HeadphonesViewModel(),
                  KeyboardsViewModel(),
                  LaptopViewModel(),
                  MemoryViewModel(),
                  MicrophonesViewModel(),
                  MonitorsViewModel(),
                  MouseViewModel(),
                  OthersViewModel(),
                  PcsViewModel(),
                  WiresViewModel(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
