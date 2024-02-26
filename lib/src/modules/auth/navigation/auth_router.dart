import 'package:go_router/go_router.dart';
import 'package:pako_wallet/src/modules/auth/modules/login/presentation/screens/loginScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_router.dart';
import 'package:pako_wallet/src/modules/auth/navigation/auth_routes.dart';

enum AppRoute { splash, login, home }

final authNavigationStack = GoRoute(
    path: AuthRoutes.auth.path,
    name: AuthRoutes.auth.name,
    builder: (context, state) {
      return const LoginScreen();
    },
    routes: [registerNavigationStack]);
