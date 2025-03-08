import 'package:get/get.dart';
import 'package:the_pilot_app/utils/constants.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  void login() {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () {
      isLoading.value = false;
      Get.offAllNamed(Constants.navigationRoute);
    });
  }
}
