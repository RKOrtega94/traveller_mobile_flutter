import 'package:go_router/go_router.dart';
import 'package:traveller_mobile_flutter/presentation/screens/main_screen.dart';
import 'package:traveller_mobile_flutter/presentation/screens/splash_screen.dart';

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
  ],
);
