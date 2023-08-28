import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class GuidesLaptopViewContent extends StatelessWidget {
  const GuidesLaptopViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 130,
              child: Image(
                image: AssetImage('images/laptop.png'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 210,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      'How laptop for programist?',
                      style: TextStyle(
                        color: colorFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'Latest generation laptops for developers.The fastest on the world market.Lightweight, allowing you to work from anywhere in the world.',
                        style: TextStyle(
                          color: colorFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
