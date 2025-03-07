import 'package:get/get.dart';
import '../views/splash_view.dart';
import '../views/login_view.dart';
import '../views/navigation_view.dart';
import '../bindings/login_binding.dart';
import '../bindings/navigation_binding.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/splash', page: () => const SplashView()),
    GetPage(name: '/login', page: () => LoginView(), binding: LoginBinding()),
    GetPage(name: '/nav', page: () => NavigationView(), binding: NavigationBinding()),
  ];
}
