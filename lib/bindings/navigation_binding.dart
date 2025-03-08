import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';

/// Binds the NavigationController to the dependency injection system.
/// This ensures that the NavigationController is created only when needed
/// and disposed of when no longer in use.
class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
