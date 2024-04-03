import 'package:bookly/constanse.dart';
import 'package:bookly/core/utils/asstes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSelerListViewItem extends StatelessWidget {
  const BestSelerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
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
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child:Text("Harry Potter and the Goblet of Fire ",style: Styles.textstyle20.copyWith(fontFamily: kGtSectraFine),maxLines: 2,overflow: TextOverflow.ellipsis,)),
       const SizedBox(height: 3,), 
       const Text("J.K.  Rowling",style: Styles.textstyle14,),
       const SizedBox(height: 3,), 
        Row(
        children: [
        Text('19.99 €',style: Styles.textstyle20.copyWith(fontWeight: FontWeight.bold),)
       ],)
        ],)
      ],),
    );
  }
}

