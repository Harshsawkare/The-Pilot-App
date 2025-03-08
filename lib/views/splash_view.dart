import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/app_theme.dart';
import 'package:the_pilot_app/utils/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(Constants.loginRoute);
    });

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppTheme.bgColor,
        body: Center(
          child: Image.asset(
            Constants.assetThePilot,
            width: 100,
          ), // Display logo
        ),
      ),
    );
  }
}
