part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBookFailuer extends FeaturedBooksState 
{
  final String errorMessage;
  const FeaturedBookFailuer(this.errorMessage);
}
final class FeaturedBookSuccess extends FeaturedBooksState 
{
  final List<BooksModel> books;
  const FeaturedBookSuccess(this.books);
}
