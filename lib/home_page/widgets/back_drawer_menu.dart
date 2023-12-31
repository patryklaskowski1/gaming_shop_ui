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

class BackDrawerMenu extends StatelessWidget {
  const BackDrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Image(
              image: AssetImage('images/ad.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
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
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 10),
            child: SizedBox(
              height: 80,
              width: 60,
              child: Center(
                child: Text(
                  'Delivery within 48 hours ! ! !',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
