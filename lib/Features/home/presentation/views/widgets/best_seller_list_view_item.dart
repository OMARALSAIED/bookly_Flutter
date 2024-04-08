import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_Rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/constanse.dart';
import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.booksModel});
  
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDeatilesView,extra: booksModel);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
           CustomBookimage(imageUrl: booksModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        booksModel.volumeInfo.title!,
                        style: Styles.textstyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    booksModel.volumeInfo.authors![0],
                    style: Styles.textstyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textstyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                    const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
