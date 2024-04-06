part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}
final class NewsetBooksLoading extends NewsetBooksState {}
final class NewsetBookssuccess extends NewsetBooksState 

{
  final List<BooksModel> books;

 const NewsetBookssuccess(this.books);
}

final class NewsetBooksFailuer extends NewsetBooksState 
{
  final String errorMessage;

  const NewsetBooksFailuer(this.errorMessage);
}
