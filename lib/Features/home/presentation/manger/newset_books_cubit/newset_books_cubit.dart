import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  
  final HomeRepo homeRepo;
  Future<void> fetchNewsBooks() async
  {
    emit(NewsetBooksLoading());
    var result=await homeRepo.fetchNewsBooks();

    result.fold((failuer) {
      emit(NewsetBooksFailuer(failuer.errorMessage));
    }, (books) 
    {
      emit(NewsetBookssuccess(books));
    }
    
    );

  }
}
