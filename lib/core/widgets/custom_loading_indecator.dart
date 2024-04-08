import 'package:flutter/material.dart';

class CustomloadingIndecator extends StatelessWidget {
  const CustomloadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Center(child: CircularProgressIndicator(),);
  }
}