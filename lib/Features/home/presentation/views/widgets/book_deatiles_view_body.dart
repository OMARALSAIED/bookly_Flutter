import 'package:bookly/Features/home/presentation/views/widgets/cutom_deatiles_app_bar.dart';
import 'package:flutter/material.dart';


class BookDeatilesViewBody extends StatelessWidget {
  const BookDeatilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SafeArea(child: CustomAppbarBookDeatiles())
    ],);
  }
}

