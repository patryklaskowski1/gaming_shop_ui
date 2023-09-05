import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/categorys_pages/chairs_category_page/chairs_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/headphones_microphones_category_page/headphones_microphones_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/keyboards_mouse_category_page/keyboards_mouses_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/memory_category_page/memory_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/monitors_category_page/monitors_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/others_category_page/others_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/pc_laptop_category_page/pcs_laptops_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/webcams_category_page/webcams_category_page.dart';
import 'package:gaming_shop_ui/categorys_pages/wires_category_page/wires_category_page.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/widgets/bottom_navigator_bar.dart';
import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const GuidesView(),
          const TextFieldContent(),
          Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.computer,
                  color: colorFont,
                ),
                title: const Text(
                  "PC's & Laptops",
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PcsLaptopsCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.monitor,
                  color: colorFont,
                ),
                title: const Text(
                  'Monitors',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MonitorsCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.keyboard,
                  color: colorFont,
                ),
                title: const Text(
                  'Keyboards & Mouse',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KeyboardsMouseCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.headset_mic_outlined,
                  color: colorFont,
                ),
                title: const Text(
                  'Headphones & Microphones',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const HeadphonesMicrophonesCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo_camera_front,
                  color: colorFont,
                ),
                title: const Text(
                  'Webcam',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WebcamCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.chair,
                  color: colorFont,
                ),
                title: const Text(
                  'Gaming chairs',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChairsCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.usb,
                  color: colorFont,
                ),
                title: const Text(
                  'Wires',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WiresCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.memory,
                  color: colorFont,
                ),
                title: const Text(
                  'Memory',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MemoryCategoryPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.category,
                  color: colorFont,
                ),
                title: const Text(
                  'Others',
                  style: TextStyle(
                    color: colorFont,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OthersCategoryPage(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBarDesign(),
    );
  }
}
