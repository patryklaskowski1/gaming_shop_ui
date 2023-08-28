
import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/guides/guides_view_contents.dart/guides_laptop_view_content.dart';
import 'package:gaming_shop_ui/guides/guides_view_contents/guides_microphon_view_content.dart';

class GuidesView extends StatelessWidget {
  const GuidesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Container(
        width: 210,
        height: 140,
        color: Colors.yellow,
        child: const Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Expanded(
                  child: Wrap(
                    children: [
                      GuidesLaptopViewContent(),
                      SizedBox(width: 20),
                      GuidesMicrophonViewContent(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
