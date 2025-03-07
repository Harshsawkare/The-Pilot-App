import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/app_theme.dart';
import 'package:the_pilot_app/widgets/app_button.dart';
import 'package:the_pilot_app/widgets/app_text.dart';
import 'package:the_pilot_app/widgets/app_text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = Get.find();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.35,
            decoration: const BoxDecoration(
              color: AppTheme.disabledColor,
              image: DecorationImage(
                image: AssetImage('assets/loginImage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.65,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const AppText(
                    text: 'Welcome!',
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: AppTheme.headingColor,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: AppTextField(
                      textInputType: TextInputType.emailAddress,
                      hintText: 'Email Address',
                    ),
                  ),
                  const AppTextField(
                    textInputType: TextInputType.text,
                    hintText: 'Password',
                    isPassword: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: AppText(
                      text: 'Forgot Password?',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Obx(
                      () => controller.isLoading.value
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularProgressIndicator(
                                  color: AppTheme.primaryColor,
                                ),
                              ],
                            )
                          : AppButton(
                              label: 'Login',
                              onPressed: controller.login,
                            ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: 'Not a member?',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.subHeadingColor,
                      ),
                      AppText(
                        text: ' Register Now',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Divider(
                      height: 0.5,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: 'App made by',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.subHeadingColor,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 116,
                          child: AppButton(
                            label: 'Hussam',
                            onPressed: () {},
                            textWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
