import 'package:flutter/material.dart';
import 'package:the_pilot_app/utils/app_theme.dart';

class AppText extends StatelessWidget {

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final FontStyle fontStyle;

  const AppText({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = AppTheme.headingColor,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'Inter',
        color: color,
        fontStyle: fontStyle,
      ),
    );
  }
}
