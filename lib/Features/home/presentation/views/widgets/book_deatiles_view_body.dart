import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_deatiles_view_Reating_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_similer_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutom_deatiles_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDeatilesViewBody extends StatelessWidget {
  const BookDeatilesViewBody({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(slivers: [
      SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                const CustomAppbarBookDeatiles(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child:  CustomBookimage(imageUrl:booksModel.volumeInfo.imageLinks?.thumbnail??'' ,),
                ),
                const Expanded(
                    child: SizedBox(
                  height: 43,
                )),
                 Text(
                  textAlign: TextAlign.center,
                  booksModel.volumeInfo.title!,
                  style: Styles.textstyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                    opacity: .7,
                    child: Text(
                      booksModel.volumeInfo.authors![0],
                      style: Styles.textstyle16
                          .copyWith(fontStyle: FontStyle.italic),
                    )),
                const SizedBox(
                  height: 18,
                ),
              const  ReatingSection(),
                const SimilaerBookListView(),
              ],
            ),
          ))
    ]);
  }
}
