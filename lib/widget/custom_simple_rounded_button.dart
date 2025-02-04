// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomSimpleRoundedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final double height;
  // ignore: non_constant_identifier_names
  final double width;final  BorderColor;
  final Color buttoncolor;
  final BorderRadius borderRadius;
  const CustomSimpleRoundedButton({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.child,this.BorderColor,
    required this.onTap,
    required this.height,
    required this.width,
    required this.buttoncolor,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: borderRadius,border: Border.all(color: BorderColor),

        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
