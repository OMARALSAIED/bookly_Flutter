import 'package:bookly/core/utils/asstes.dart';
import 'package:flutter/material.dart';

class CustomBookimage extends StatelessWidget {
  const CustomBookimage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imageUrl),
                ))),
      ),
    );
  }
}
