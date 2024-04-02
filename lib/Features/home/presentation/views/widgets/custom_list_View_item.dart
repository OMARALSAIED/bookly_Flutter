import 'package:bookly/core/utils/asstes.dart';
import 'package:flutter/material.dart';

class CutomListViewItem extends StatelessWidget {
  const CutomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:const DecorationImage(
            fit: BoxFit.fill,
            image:AssetImage(AssetsData.testimage),
          
           ))
        ),
      ),
    );
  }
}