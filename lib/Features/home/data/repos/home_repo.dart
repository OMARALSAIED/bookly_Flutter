import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
Future<Either<Failure,List<BooksModel>>>  fetchNewsBooks();
Future<Either<Failure,List<BooksModel>>>  fetchfeaturedBooks();
Future<Either<Failure,List<BooksModel>>>  fetchSimillerBooks({required String category});

}