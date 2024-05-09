import 'package:bookly_app/features/home/presentation/views/book_preview_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeViewRoute = "/HomeView";
  static const bookPreviewRoute = "/BookPreviewView";
  static const serachViewRoute = "/SearchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: serachViewRoute,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookPreviewRoute,
        builder: (context, state) => const BookPreviewView(),
      ),
    ],
  );
}
