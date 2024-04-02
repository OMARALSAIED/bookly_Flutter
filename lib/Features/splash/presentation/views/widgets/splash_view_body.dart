import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constanse.dart';
import 'package:bookly/core/utils/asstes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
    initSlidinganiation();
    navigateToHome();
    
    
  }


 
  @override
  void dispose() {
    // يقوم بغلق الكونترولر لغق الموارد
    super.dispose();
    animationController.dispose();
  }

  //Build Method
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

  //Method To Navigateto Home with anmiation
  void navigateToHome() {
    
    Future.delayed(const Duration(seconds: 2),() 
    {
      Get.to(()=>const Homeview(),transition: Transition.fade,duration: kTranstionDuartion);
    });
  }




//Anmiation function To reuse 
   void initSlidinganiation() {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0, 2),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
}




