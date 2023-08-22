import 'package:flutter/material.dart';
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
              image: AssetImage('images/sale1.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.computer,
              color: colorFont,
            ),
            title: const Text(
              "PC's",
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.laptop,
              color: colorFont,
            ),
            title: const Text(
              'Laptops',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.keyboard,
              color: colorFont,
            ),
            title: const Text(
              'Keyboards',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.mouse,
              color: colorFont,
            ),
            title: const Text(
              'Mouse',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.headset_mic_outlined,
              color: colorFont,
            ),
            title: const Text(
              'Headphones',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.mic,
              color: colorFont,
            ),
            title: const Text(
              'Microphones',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.photo_camera_front,
              color: colorFont,
            ),
            title: const Text(
              'Cameras',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.chair,
              color: colorFont,
            ),
            title: const Text(
              'Gaming chair',
              style: TextStyle(
                color: colorFont,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
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
              Navigator.pop(context);
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
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
