import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/widgets/splash_screen.dart';
import 'package:base_project/domain/blocs/application/app_router.gr.dart';
import 'package:base_project/presentation/pages/home_page/home_page.dart';
import 'package:base_project/presentation/pages/login_page/login_page.dart';

final router = AppRouter();

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}

class SplashPageRoute extends PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class HomePageRoute extends PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class LoginPageRoute extends PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}
