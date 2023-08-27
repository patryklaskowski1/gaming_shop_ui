import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class ChairViewModel extends StatelessWidget {
  const ChairViewModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Container(
        height: 240,
        width: 125,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 140,
              width: 120,
              child: Image(
                image: AssetImage('images/chair.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                'Gaming Chair',
                style: TextStyle(
                  color: colorFont,
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '450,00',
                    style: TextStyle(
                      color: colorFont,
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.yellow,
                      decorationThickness: 2,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.euro,
                    color: Colors.yellow,
                    size: 14,
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '180,00',
                  style: TextStyle(color: colorFont, fontSize: 14),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.euro,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                height: 32,
                width: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: colorFont,
                    size: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}