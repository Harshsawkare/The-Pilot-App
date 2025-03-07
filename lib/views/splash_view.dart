import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/app_theme.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed('/login');
    });

    return PopScope(
      canPop: false, // Disable back navigation
      child: Scaffold(
        backgroundColor: AppTheme.bgColor,
        body: Center(
          child: Image.asset(
            'assets/ThePilotLogo.png',
            width: 100,
          ), // Display logo
        ),
      ),
    );
  }
}
