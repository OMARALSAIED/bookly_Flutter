part of 'similler_books_cubit.dart';

abstract class SimillerBooksState extends Equatable {
  const SimillerBooksState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksCubitInitial extends SimillerBooksState {}
final class SimillerBooksSuccess extends SimillerBooksState 
{
  final List<BooksModel> books;
  const SimillerBooksSuccess(this.books);
}
final class SimillerBooksLoading extends SimillerBooksState {}
final class SimillerBooksFailure extends SimillerBooksState 
{
  final String errorMessage;
  const SimillerBooksFailure(this.errorMessage);
}