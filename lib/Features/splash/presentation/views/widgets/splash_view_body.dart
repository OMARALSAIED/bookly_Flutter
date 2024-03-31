import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/core/utils/asstes.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  
  @override
  void initState() {
    
    super.initState();

    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0, 2),end: Offset.zero).animate(animationController);
    animationController.forward();
    
  }
  @override
  void dispose() {
    // يقوم بغلق الكونترولر لغق الموارد
    super.dispose();
    animationController.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,//The Children get all the width can
      children: [
      
      Image.asset(AssetsData.logo),
      const SizedBox(height: 4,),
      
     SlidingText(slidingAnimation: slidingAnimation)
    ],
    );
  }
}




