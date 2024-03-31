import 'package:bookly/core/utils/asstes.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,//The Children get all the width can
      children: [
      
      Image.asset(AssetsData.logo),
      const SizedBox(height: 4,),
     const Text("Read Free Books",textAlign: TextAlign.center,)
    ],
    );
  }
}