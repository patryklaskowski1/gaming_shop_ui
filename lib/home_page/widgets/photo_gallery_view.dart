import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoGalleryPage extends StatelessWidget {
  PhotoGalleryPage({
    super.key,
  });

  final photoList = [
    'images/sale1.jpg',
    'images/item.jpg',
    'images/item1.jpg',
    'images/chairs.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 210,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
      ),
      child: SizedBox(
        width: 360,
        height: 200,
        child: Scaffold(
          body: PhotoViewGallery.builder(
            itemCount: photoList.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(
                  photoList[index],
                ),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            scrollPhysics: const BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
            ),
          ),
        ),
      ),
    );
  }
}