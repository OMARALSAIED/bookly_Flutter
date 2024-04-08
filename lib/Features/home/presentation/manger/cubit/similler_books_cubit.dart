

import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit(this.homeRepo) : super(SimillerBooksCubitInitial());
  final HomeRepo homeRepo;


   Future<void> fetchSimillerBooks({required String category}) async
  {
    emit(SimillerBooksLoading());
    var result=await homeRepo.fetchSimillerBooks(category: category);

    result.fold((failuer) {
      emit(SimillerBooksFailure(failuer.errorMessage));
    }, (books) 
    {
      emit(SimillerBooksSuccess(books));
    }
    
    );

  }
}
