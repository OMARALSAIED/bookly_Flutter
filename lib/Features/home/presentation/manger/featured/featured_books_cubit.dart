import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchfeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result=await homeRepo.fetchfeaturedBooks();

    result.fold((failuer) {
      emit(FeaturedBookFailuer(failuer.errorMessage));
    }, (books) 
    {
      emit(FeaturedBookSuccess(books));
    }
    
    );

  }
}
