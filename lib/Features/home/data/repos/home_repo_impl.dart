import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo
{
  late  ApiService apiService;

  HomeRepoImpl(ApiService apiService);
  
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks()async {
  try {
  var data=await  apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&sorting=newest');
  List<BooksModel> books=[];
  for(var item in data['item'] )
  {
    books.add(BooksModel.fromJson(item));
  }

  return right(books);
}catch (e) {
  if(e is DioException)
  {
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchfeaturedBooks()async {
    try {
  var data=await  apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
  List<BooksModel> books=[];
  for(var item in data['item'] )
  {
    books.add(BooksModel.fromJson(item));
  }

  return right(books);
}catch (e) {
  if(e is DioException)
  {
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
  }
  
}