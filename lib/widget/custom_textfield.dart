// ignore_for_file: must_be_immutable

import 'package:e_commerce/theme/colors.dart';
import 'package:flutter/material.dart';

// Custom TextField widget
class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final double borderRadius;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final Color filledColor;
  final maxLine;
  final Function(String)? onSubmitted; // Add onSubmitted as a parameter
  final Padding? padding;
  bool isfilled;

  CustomTextField({
    Key? key,
    required this.hintText,
    this.labelText,
    this.onSubmitted,
    this.controller,
    this.maxLine,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.labelStyle,
    this.padding,
    required this.isfilled,
    this.borderRadius = 12.0,
    this.filledColor = themelightgreycolor,
    this.borderColor = Colors.grey,
    this.focusedBorderColor = Colors.grey, // Default focus border color
    this.enabledBorderColor = Colors.grey, // Default enabled border color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default padding
    EdgeInsetsGeometry defaultPadding =
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0);

    // Use custom padding if passed, otherwise default padding
    EdgeInsetsGeometry currentPadding = padding?.padding ?? defaultPadding;

    return TextFormField(
      maxLines: maxLine,
      controller: controller,
      onFieldSubmitted: onSubmitted,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: hintStyle,
        labelStyle: labelStyle,
        filled: isfilled,
        fillColor: isfilled
            ? filledColor
            : Colors.transparent, // Set background color when filled
        // Apply the border with 12px radius, and change the border color if `isfilled = true`
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: isfilled
                ? focusedBorderColor
                : borderColor, // Change border color when filled
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: isfilled
                ? focusedBorderColor
                : focusedBorderColor, // Keep focused color consistent
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: isfilled
                ? focusedBorderColor
                : enabledBorderColor, // Change enabled border color when filled
            width: 1.5,
          ),
        ),
        contentPadding: currentPadding, // Use runtime padding
      ),
    );
  }
}
