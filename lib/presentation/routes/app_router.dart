import 'package:auto_route/auto_route.dart';
import 'package:traveller_mobile_flutter/presentation/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true, path: '/'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
