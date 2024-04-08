import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/presentation/manger/cubit/similler_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_deatiles_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDeatilesView extends StatefulWidget {
  const BookDeatilesView({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  State<BookDeatilesView> createState() => _BookDeatilesViewState();
}

class _BookDeatilesViewState extends State<BookDeatilesView> {

  @override
  void initState()
  {
    BlocProvider.of<SimillerBooksCubit>(context).fetchSimillerBooks(category: widget.booksModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDeatilesViewBody(booksModel: widget.booksModel,),
    );
  }
}
