import 'package:go_router/go_router.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_routes.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/CreatePasswordScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/birthDateScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/identificationDataScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/personalInfoScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/phoneNumberScreen/index.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/presentation/screens/selectCountryScreen/index.dart';

final registerNavigationStack = GoRoute(
    path: RegisterRoutes.register.path,
    name: RegisterRoutes.register.name,
    builder: (context, state) {
      return const SelectUserCountryScreen();
    },
    routes: [
      GoRoute(
        path: RegisterRoutes.personalInfoScreen.path,
        name: RegisterRoutes.personalInfoScreen.name,
        builder: (context, state) {
          return const PersonalInfoScreen();
        },
      ),
      GoRoute(
        path: RegisterRoutes.identificationDataScreen.path,
        name: RegisterRoutes.identificationDataScreen.name,
        builder: (context, state) {
          return const IdentificationDataScreen();
        },
      ),
      GoRoute(
        path: RegisterRoutes.birthDateScreen.path,
        name: RegisterRoutes.birthDateScreen.name,
        builder: (context, state) {
          return const BirthDateScreen();
        },
      ),
      GoRoute(
        path: RegisterRoutes.phoneNumberScreen.path,
        name: RegisterRoutes.phoneNumberScreen.name,
        builder: (context, state) {
          return const PhoneNumberScreen();
        },
      ),
      GoRoute(
        path: RegisterRoutes.createPasswordScreen.path,
        name: RegisterRoutes.createPasswordScreen.name,
        builder: (context, state) {
          return const CreatePasswordScreen();
        },
      ),
    ]);
