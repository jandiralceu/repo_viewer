import 'package:auto_route/auto_route.dart';
import 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/spash', page: SplashRoute.page, initial: true),
        AutoRoute(path: '/starred', page: StarredReposRoute.page),
        AutoRoute(path: '/sign-in', page: SignInRoute.page),
      ];
}
