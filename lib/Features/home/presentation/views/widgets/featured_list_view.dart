import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FeatureedBookListView extends StatelessWidget {
  const FeatureedBookListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return   Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookimage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                  );
                }),
          );
        }else if (state is FeaturedBookFailuer)
        {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else
        {
          return const CustomloadingIndecator();
        }
      },
    );
  }
}
