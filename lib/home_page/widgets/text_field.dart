
import 'package:flutter/material.dart';
import 'package:gaming_shop_ui/const/const.dart';

class TextFieldContent extends StatelessWidget {
  const TextFieldContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: TextField(
        cursorColor: Colors.black,
        style: const TextStyle(color: colorFont),
        decoration: InputDecoration(
          helperText: 'Search for the item you need',
          hintText: 'What you need ?',
          hintStyle: const TextStyle(
            color: colorFont,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: colorFont,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
