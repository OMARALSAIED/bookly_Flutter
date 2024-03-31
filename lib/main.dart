import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/constanse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor:kprimaryColor),
      debugShowCheckedModeBanner: false,
      home:const SplashView(),
    );
  }
}