
import 'package:bookly/Features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       BlocBuilder<NewsetBooksCubit,NewsetBooksState>(
         
         builder: (context, state) {
            if(state is NewsetBookssuccess )
          {
            
          return  ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(booksModel: state.books[index],),
          );
                },
              );
          }
           else if(state is NewsetBooksFailuer)
           {
             return CustomErrorWidget(errorMessage: state.errorMessage);
           }else
           {
            return const CustomloadingIndecator();
           }
         },
       
         
        );
  }
}
