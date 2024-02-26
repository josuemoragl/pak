import 'package:go_router/go_router.dart';
import 'package:pako_wallet/src/modules/session/modules/home/presentation/screens/homeBottomBar/index.dart';
import 'package:pako_wallet/src/modules/session/modules/profile/navigation/profile_router.dart';
import 'package:pako_wallet/src/modules/session/navigation/session_routes.dart';

final sessionNavigationStack = GoRoute(
    path: SessionRoutes.session.path,
    name: SessionRoutes.session.name,
    builder: (context, state) {
      return const HomeBottomNavigationBar();
    },
    routes: [profileNavigationStack]);
