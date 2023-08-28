import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
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

class HitsOfTheWeekViewContent extends StatelessWidget {
  const HitsOfTheWeekViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 5,
            bottom: 5,
            top: 10,
          ),
          child: Row(
            children: [
              Icon(
                Icons.stars,
                color: colorFont,
                size: 32,
              ),
              SizedBox(width: 5),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'HITS OF THE WEEK',
                  style: TextStyle(
                    color: colorFont,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PcsViewModel(),
                MemoryViewModel(),
                MicrophonesViewModel(),
                MonitorsViewModel(),
                MouseViewModel(),
                OthersViewModel(),
                LaptopViewModel(),
                WiresViewModel(),
                WebcamViewModel(),
                ChairViewModel(),
                HeadphonesViewModel(),
                KeyboardsViewModel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
