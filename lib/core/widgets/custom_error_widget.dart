import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override

  // ignore: override_on_non_overriding_member
  final String errorMessage;
  Widget build(BuildContext context) {
    return Text(errorMessage,style: Styles.textstyle18,);
  }
}