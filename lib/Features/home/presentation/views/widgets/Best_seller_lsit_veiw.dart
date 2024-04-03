import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      padding: EdgeInsets.zero,
     
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context,index)
      {
         return const Padding(
           padding: EdgeInsets.symmetric(vertical: 10),
           child: BestSelerListViewItem(),
         );
      }
      ,
    
    
    ));
  }
}
