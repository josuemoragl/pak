import 'package:pako_wallet/src/navigation/app_route.dart';

class RegisterRoutes {
  static AppRoute register = AppRoute(name: 'register', path: 'register');
  static AppRoute selectUserCountry =
      AppRoute(name: 'selectUserCountry', path: 'add-country');
  static AppRoute personalInfoScreen =
      AppRoute(name: 'personalInfo', path: 'personal-info');
  static AppRoute identificationDataScreen =
      AppRoute(name: 'identificationDataScreen', path: 'identification-data');
  static AppRoute phoneNumberScreen =
      AppRoute(name: 'phoneNumberScreen', path: 'add-phone-number');
  static AppRoute selectCountryScreen =
      AppRoute(name: 'selectCountryScreen', path: 'select-country');
  static AppRoute birthDateScreen =
      AppRoute(name: 'birthDateScreen', path: 'add-birthdate');
  static AppRoute createPasswordScreen =
      AppRoute(name: 'createPasswordScreen', path: 'create-password');
}
