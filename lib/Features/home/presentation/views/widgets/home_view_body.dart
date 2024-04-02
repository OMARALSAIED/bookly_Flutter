import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_list_View_item.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
        CustomAppBar(),
        
        FeatureedBookListView()
    ],);
  }
}


class FeatureedBookListView extends StatelessWidget {
  const FeatureedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
      {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child:   CustomListViewItem(),
        );
      }
      ),
    );
  }
}


