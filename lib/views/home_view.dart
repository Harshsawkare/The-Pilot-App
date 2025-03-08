import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:the_pilot_app/utils/constants.dart';
import 'package:the_pilot_app/widgets/app_text.dart';

import '../utils/app_theme.dart';
import '../widgets/info_card.dart';
import '../widgets/section_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              // Info Cards
              const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: InfoCard(
                        title: "Percentage",
                        subtitleValue: "12%",
                        subtitleText: "From Last Month",
                        value: "87.52",
                        valueSuffix: " %",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: InfoCard(
                        title: "Percentage",
                        subtitleValue: "12%",
                        subtitleText: "From Last Month",
                        value: "87.52",
                        valueSuffix: " classes",
                      ),
                    ),
                  ),
                ],
              ),

              // Homeroom Card
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: Get.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                          ),
                          child: Image.asset(
                            Constants.assetDots,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(8),
                            ),
                            child: Image.asset(Constants.assetWorkspace),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 60, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: 'Homeroom',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.bgColor,
                            ),
                            AppText(
                              text: 'Your classroom awaits you',
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.disabledColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Section Cards
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: SectionCard(
                      title: "Assigned Classes",
                      subtitle: "Your classroom awaits you",
                      color: AppTheme.headingColor,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: SectionCard(
                      title: "Announcements",
                      subtitle: "Your classroom awaits you",
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: SectionCard(
                      title: "Notes & Storage",
                      subtitle: "Your classroom awaits you",
                      color: AppTheme.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
