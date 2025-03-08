import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/app_theme.dart';
import 'package:the_pilot_app/widgets/app_text.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends StatelessWidget {
  final NavigationController controller = Get.find();

  NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(Get.width, 62),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: Get.width,
                height: 62,
                color: AppTheme.bgColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/avatar.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: 'Sarthak Hussam',
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: AppTheme.headingColor,
                            ),
                            AppText(
                              text: 'Teacher (Homeroom)',
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: AppTheme.subHeadingColor,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/chat.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: controller.pages[controller.selectedIndex.value],
          backgroundColor: AppTheme.bgColor,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            backgroundColor: AppTheme.bgColor,
            onTap: controller.changePage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color: controller.selectedIndex.value == 0
                      ? AppTheme.primaryColor
                      : AppTheme.subHeadingColor,
                  size: controller.selectedIndex.value == 0 ? 28 : 22,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_rounded,
                  color: controller.selectedIndex.value == 1
                      ? AppTheme.primaryColor
                      : AppTheme.subHeadingColor,
                  size: controller.selectedIndex.value == 1 ? 28 : 22,
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
