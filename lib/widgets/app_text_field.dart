import 'package:flutter/material.dart';
import 'package:the_pilot_app/utils/constants.dart';

import '../utils/app_theme.dart';

class AppTextField extends StatefulWidget {
  final TextInputType textInputType;
  final int maxLength;
  final double radius;
  final double focusedBorder;
  final double enabledBorder;
  final Color enabledColor;
  final Color focusedColor;
  final Color cursorColor;
  final String hintText;
  final bool isPassword;

  const AppTextField({
    super.key,
    this.textInputType = TextInputType.text,
    this.maxLength = 50,
    this.radius = 12,
    this.focusedBorder = 1,
    this.enabledBorder = 1,
    this.enabledColor = AppTheme.borderColor,
    this.focusedColor = AppTheme.borderColor,
    this.cursorColor = AppTheme.borderColor,
    this.hintText = 'hint text',
    this.isPassword = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
      maxLength: widget.maxLength,
      style: const TextStyle(
        color: AppTheme.headingColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: Constants.fontFamily,
      ),
      cursorColor: widget.cursorColor,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: AppTheme.subHeadingColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          fontFamily: Constants.fontFamily,
        ),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            color: widget.focusedColor,
            width: widget.focusedBorder,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            color: widget.enabledColor,
            width: widget.enabledBorder,
          ),
        ),
        counterText: '',
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                  size: 16,
                ),
                onPressed: () {
                  // update password visibility
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
