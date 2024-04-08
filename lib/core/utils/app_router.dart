import 'package:bookly/Features/Search/presentation/views/search_view.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';

import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/cubit/similler_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kBookDeatilesView = '/bookdetailsview';

  static const kSerachView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (context, state) => const Homeview()),
    GoRoute(
        path: kBookDeatilesView,

        builder:(context, state) =>  BlocProvider(create: (context)=>SimillerBooksCubit(getIt.get<HomeRepoImpl>(),),child:  BookDeatilesView(booksModel: state.extra as BooksModel,),)),


    GoRoute(path: kSerachView, builder: (context, state) => const SerachView())
  ]);
}
