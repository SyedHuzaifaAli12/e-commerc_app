import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatefulWidget {
  final String text;
  final Color colors;
  final double? height;
  final double? width;
  final VoidCallback onTap;
  final Color? textcolor;
  const ContainerButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textcolor,
    required this.colors,
    this.width,
    this.height,
  });

  @override
  State<ContainerButton> createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.colors, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.textcolor,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
