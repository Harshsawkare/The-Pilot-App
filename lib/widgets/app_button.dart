
import 'package:flutter/material.dart';
import 'package:the_pilot_app/utils/app_theme.dart';

class AppButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final Color buttonColor;
  final double borderRadius;
  final Color textColor;
  final double textSize;
  final FontWeight textWeight;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.buttonColor = AppTheme.primaryColor,
    this.textColor = AppTheme.bgColor,
    this.borderRadius = 12,
    this.textSize = 12,
    this.textWeight = FontWeight.w600,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        backgroundColor: widget.buttonColor, // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius), // Border radius
        ), // Padding
      ),
      child: Center(
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.textColor,
            fontSize: widget.textSize,
            fontWeight: widget.textWeight,
          ),
        ),
      ),
    );
  }
}
