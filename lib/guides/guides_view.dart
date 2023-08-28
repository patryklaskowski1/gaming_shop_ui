import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/guides/guides_view_contents.dart/guides_laptop_view_content.dart';
import 'package:gaming_shop_ui/guides/guides_view_contents/guides_microphon_view_content.dart';

class GuidesView extends StatelessWidget {
  const GuidesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 5,
            bottom: 5,
            top: 10,
          ),
          child: Row(
            children: [
              Icon(
                Icons.tips_and_updates,
                color: colorFont,
                size: 32,
              ),
              SizedBox(width: 5),
              Text(
                'GUIDES',
                style: TextStyle(
                  color: colorFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Container(
            width: 420,
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
        ),
      ],
    );
  }
}
