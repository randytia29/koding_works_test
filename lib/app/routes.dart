import 'package:go_router/go_router.dart';
import 'package:kodingworkstest/features/home/presentation/pages/index/home_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage())
  ]);
}
