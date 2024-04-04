import 'package:bookly/Features/home/presentation/views/widgets/custom_list_View_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutom_deatiles_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BookDeatilesViewBody extends StatelessWidget {
  const BookDeatilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:20,vertical: 15),
      child: Column(children: [
        const  CustomAppbarBookDeatiles(),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width * .2),
           child:const CustomBookimage(),
         ),
         const SizedBox(height: 43,),
      const  Text('The Jungel Book',style: Styles.textstyle30,),
      SizedBox(height: 6,),
      Opacity(
        opacity: .7,
        child: Text('Rudyard Kip',style: Styles.textstyle16.copyWith(fontStyle: FontStyle.italic) ,))
      ],),
    );
  }
}

