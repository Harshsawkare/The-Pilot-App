import 'package:get/get.dart';
import '../controllers/login_controller.dart';

/// Binds the LoginController to the dependency injection system.
/// This ensures that the LoginController is created only when needed
/// and disposed of when no longer in use.
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
