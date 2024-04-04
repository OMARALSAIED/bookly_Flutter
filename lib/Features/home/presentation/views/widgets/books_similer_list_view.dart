import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';

class SimilaerBookListView extends StatelessWidget {
  const SimilaerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookimage(),
            );
          }),
    );
  }
}
