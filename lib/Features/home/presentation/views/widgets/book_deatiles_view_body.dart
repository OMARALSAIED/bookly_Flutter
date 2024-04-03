import 'package:bookly/Features/home/presentation/views/widgets/custom_list_View_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutom_deatiles_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BookDeatilesViewBody extends StatelessWidget {
  const BookDeatilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        const  CustomAppbarBookDeatiles(),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width * .17),
           child:const CustomBookimage(),
         )
        
      ],),
    );
  }
}

