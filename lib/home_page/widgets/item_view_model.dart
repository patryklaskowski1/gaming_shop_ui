import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class ItemViewModel extends StatelessWidget {
  const ItemViewModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Container(
        height: 280,
        width: 125,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 140,
              width: 120,
              child: Image(
                image: AssetImage('images/chair.jpg'),
                fit: BoxFit.contain,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
              child: Text(
                'Gaming Chair',
                style: TextStyle(color: colorFont, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1400',
                    style: TextStyle(
                      color: colorFont,
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.yellow,
                      decorationThickness: 2,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.euro,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '560',
                    style: TextStyle(color: colorFont, fontSize: 18),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.euro,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: colorFont,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
