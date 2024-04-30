import 'package:bookly_app/features/home/presentation/views/book_preview_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeViewRoute = "/HomeView";
  static const bookPreviewRoute = "/BookPreview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
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
