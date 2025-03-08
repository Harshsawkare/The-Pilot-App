import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/constants.dart';
import 'package:the_pilot_app/widgets/section_card.dart';

import '../controllers/expandable_controller.dart';
import '../utils/app_theme.dart';
import '../widgets/app_text.dart';
import '../widgets/expandable_tile.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ExpandableController controller = Get.put(ExpandableController());
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [

            // Announcement section cards
            SizedBox(
              height: 124,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: SizedBox(
                    height: 124,
                    width: 167,
                    child: SectionCard(
                      title: "Announcements",
                      subtitle: "Your classroom awaits you",
                      color: AppTheme.primaryColor,
                    ),
                  ),
                ),
              ),
            ),

            // Stats section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: 'Students Stats',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.headingColor,
                  ),
                  Image.asset(
                    Constants.assetFilterIcon,
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),

            // Expandable tiles section
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return Obx(() => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ExpandableTile(
                          index: index,
                          isExpanded: controller.expandedStates[index],
                          onTap: () => controller.toggleExpansion(index),
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
