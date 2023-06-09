import 'package:auto_route/auto_route.dart';
import 'routes.gr.dart';

///
/// App route configuration
/// Here a setted all app routes and their children routes
///
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: '/starred',
          page: StarredReposRoute.page,
        ),
        AutoRoute(
          path: '/sign-in',
          page: SignInRoute.page,
        ),
        AutoRoute(
          path: '/sign-in-authorization',
          page: AuthorizationRoute.page,
        ),
      ];
}
