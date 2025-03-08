import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/app_theme.dart';
import 'app_text.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitleValue;
  final String subtitleText;
  final String value;
  final String valueSuffix;

  const InfoCard({
    super.key,
    required this.title,
    required this.subtitleValue,
    required this.subtitleText,
    required this.value,
    required this.valueSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      height: 96,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: title,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: AppTheme.bgColor,
          ),
          Row(
            children: [
              Transform.rotate(
                angle: pi / 2,
                child: const Icon(
                  Icons.arrow_circle_left_rounded,
                  color: AppTheme.headingColor,
                  size: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: AppText(
                  text: subtitleValue,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  color: AppTheme.headingColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
              AppText(
                text: subtitleText,
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: AppTheme.bgColor,
              ),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText(
                text: value,
                fontWeight: FontWeight.w900,
                fontSize: 24,
                color: AppTheme.bgColor,
              ),
              AppText(
                text: valueSuffix,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppTheme.bgColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}