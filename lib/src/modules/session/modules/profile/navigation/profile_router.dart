import 'package:go_router/go_router.dart';
import 'package:pako_wallet/src/modules/session/modules/profile/navigation/profile_routes.dart';
import 'package:pako_wallet/src/modules/session/modules/profile/presentation/screens/mainScreen/index.dart';
import 'package:pako_wallet/src/modules/session/modules/profile/presentation/screens/personalData/index.dart';

final profileNavigationStack = GoRoute(
    path: ProfileRoutes.profileMain.path,
    name: ProfileRoutes.profileMain.name,
    builder: (context, state) {
      return const ProfileMainScreen();
    },
    routes: [
      GoRoute(
          path: ProfileRoutes.personalData.path,
          name: ProfileRoutes.personalData.name,
          builder: (context, state) {
            return const PersonalDataScreen();
          })
    ]);
