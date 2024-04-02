import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/asstes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureedBookListView(),
          SizedBox(height: 50,),
          Text("Best Seller",style: Styles.textstyle18),
          SizedBox(height: 20,),
          BestSelerListViewItem()
      ],),
    );
  }
}

class BestSelerListViewItem extends StatelessWidget {
  const BestSelerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: Row(children: [
        AspectRatio(
          aspectRatio: 2.8/4,
          child: Container(
            
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image:const DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(AssetsData.testimage2),
            
             ))
          ),
        ),
      const  SizedBox(width: 30,),
         Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child:const Text("Harry Potter and the Goblet of Fire ",style: Styles.textstyle20,maxLines: 2,overflow: TextOverflow.ellipsis,))
        ],)
      ],),
    );
  }
}




