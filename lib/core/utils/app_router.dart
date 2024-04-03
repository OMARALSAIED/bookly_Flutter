import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter

{
  static const kHomeView='/homeview';
  static const kBookDeatilesView='/bookdetailsview';
  
static final router=GoRouter(routes: [

  GoRoute(path: '/',
  builder: (context,state)=>const SplashView()
  ),

    GoRoute(path: kHomeView,
  builder: (context,state)=>const Homeview()
  ),
   GoRoute(path: kBookDeatilesView,
  builder: (context,state)=>const BookDeatilesView()
  )
]);
}