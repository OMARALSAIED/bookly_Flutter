import 'package:bookly/Features/home/presentation/views/widgets/book_deatiles_view_Reating_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_similer_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutom_deatiles_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDeatilesViewBody extends StatelessWidget {
  const BookDeatilesViewBody({super.key});

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
                  child: const CustomBookimage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOM_W17Wxxau2CJpTQP65JBz8b_HOdbsAG1w&s',),
                ),
                const Expanded(
                    child: SizedBox(
                  height: 43,
                )),
                const Text(
                  'The Jungel Book',
                  style: Styles.textstyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                    opacity: .7,
                    child: Text(
                      'Rudyard Kip',
                      style: Styles.textstyle16
                          .copyWith(fontStyle: FontStyle.italic),
                    )),
                const SizedBox(
                  height: 18,
                ),
                ReatingSection(),
                const SimilaerBookListView(),
              ],
            ),
          ))
    ]);
  }
}
