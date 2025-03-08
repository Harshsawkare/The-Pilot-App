// Expandable Card Widget
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/app_theme.dart';

import 'app_text.dart';

class ExpandableTile extends StatelessWidget {
  final int index;
  final bool isExpanded;
  final VoidCallback onTap;

  const ExpandableTile({
    super.key,
    required this.index,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.tileGreyColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppTheme.borderColor,
                width: 0.3,
              ),
              boxShadow: const [
                BoxShadow(
                    color: AppTheme.softShadowColor,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                    spreadRadius: -1),
              ],
            ),
            child: Row(
              children: [
                // Student Number
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 28,
                    height: 39,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: AppText(
                        text: "${index + 1}",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppTheme.bgColor,
                      ),
                    ),
                  ),
                ),
                // Student Name
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Student Name',
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: AppTheme.subHeadingColor,
                    ),
                    AppText(
                      text: 'Sarthak Hussam',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppTheme.headingColor,
                    ),
                  ],
                ),
                const Spacer(),
                // Expand/Collapse Icon
                CircleAvatar(
                  radius: 12,
                  backgroundColor: AppTheme.primaryColor,
                  child: Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: AppTheme.bgColor,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Expandable Attendance Section
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isExpanded ? 100 : 0,
          width: Get.width * 0.85,
          curve: Curves.easeInOut,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: isExpanded
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: AppTheme.tileGreyColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:
                          List.generate(4, (index) => _buildAttendanceCard()),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  // Attendance Card with Circular Progress Indicator
  Widget _buildAttendanceCard() {
    return const Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                value: 1,
                strokeWidth: 5,
                backgroundColor: AppTheme.disabledColor,
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
              ),
            ),
            AppText(
              text: '42%',
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: AppTheme.headingColor,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppText(
            text: 'Attendance',
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: AppTheme.headingColor,
          ),
        ),
      ],
    );
  }
}
