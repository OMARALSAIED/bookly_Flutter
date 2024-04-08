import 'package:bookly/Features/home/presentation/manger/cubit/similler_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilaerBookListView extends StatelessWidget {
  const SimilaerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillerBooksCubit, SimillerBooksState>(
      builder: (context, state) {
        if (state is SimillerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookimage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                    ),
                  );
                }),
          );
        } else if (state is SimillerBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomloadingIndecator();
        }
      },
    );
  }
}
