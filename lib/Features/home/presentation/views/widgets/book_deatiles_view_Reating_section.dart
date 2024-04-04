import 'package:bookly/Features/home/presentation/views/widgets/book_Rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ReatingSection extends StatelessWidget {
  const ReatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
        const SizedBox(
          height: 35,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
            )),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
