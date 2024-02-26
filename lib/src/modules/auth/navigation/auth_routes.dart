import 'package:pako_wallet/src/navigation/app_route.dart';

class AuthRoutes {
  static AppRoute auth = AppRoute(name: 'auth', path: '/auth');
  static AppRoute registerModule =
      AppRoute(name: 'registerModule', path: 'auth/register');
  static AppRoute forgotPasswordModule =
      AppRoute(name: 'forgotPasswordModule', path: 'forgot-password');
  static AppRoute loginScreen = AppRoute(name: 'loginScreen', path: 'login');
}
