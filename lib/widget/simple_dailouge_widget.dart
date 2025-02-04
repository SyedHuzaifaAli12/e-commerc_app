import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SimpleDailogWidget extends StatelessWidget {
  final double height;
  final double? width;
  final Widget child;
  const SimpleDailogWidget(
      {super.key, this.height = 100, this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          content: SizedBox(
            height: height,
            width: width,
            child: child,
          ),
        ),
        Positioned(
            top: 250,
            left: 50,
            right: 50,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                color: themewhitecolor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      offset: Offset(3, 3),
                      color: themegreytextcolor),
                ],
              ),
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: themebackgroundPinkcolor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(3, 3),
                        color: themegreytextcolor),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.help_outline,
                    color: themewhitecolor,
                    size: 40,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
