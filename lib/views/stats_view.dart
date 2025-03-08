import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_pilot_app/widgets/section_card.dart';

import '../utils/app_theme.dart';
import '../widgets/app_text.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 124,
              child: ListView.builder(
                shrinkWrap: true,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
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
                    'assets/filterIcon.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
