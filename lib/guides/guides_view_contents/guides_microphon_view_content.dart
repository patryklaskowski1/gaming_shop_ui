import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class GuidesMicrophonViewContent extends StatelessWidget {
  const GuidesMicrophonViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 140,
              child: Image(
                image: AssetImage('images/mic.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 210,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      'How microphone to choose for streaming?',
                      style: TextStyle(
                        color: colorFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'XXX will be the best choice. High quality. The best catfish soundproofing.',
                        style: TextStyle(
                          color: colorFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
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
