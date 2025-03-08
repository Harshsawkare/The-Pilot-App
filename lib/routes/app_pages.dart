import 'package:get/get.dart';
import 'package:the_pilot_app/utils/constants.dart';
import '../views/splash_view.dart';
import '../views/login_view.dart';
import '../views/navigation_view.dart';
import '../bindings/login_binding.dart';
import '../bindings/navigation_binding.dart';

class AppPages {
  static final routes = [
    GetPage(name: Constants.splashRoute, page: () => const SplashView()),
    GetPage(
        name: Constants.loginRoute,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: Constants.navigationRoute,
        page: () => NavigationView(),
        binding: NavigationBinding()),
  ];
}
