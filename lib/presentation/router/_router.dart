import 'package:go_router/go_router.dart';

import '../screens/_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: SplashScreen.routeName,
      builder: (_, state) => const SplashScreen(),
    ),
    GoRoute(
      path: MainScreen.routeName,
      builder: (_, state) => const MainScreen(),
    ),
    GoRoute(
      path: CategoryScreen.routeName,
      builder: (_, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: "${CategoryScreen.routeName}/:id",
      builder: (_, state) {
        final id = state.pathParameters["id"];
        return CategoryScreen(id: id);
      },
    ),
  ],
);
