import 'package:flutter/material.dart';

// Custom Text Widget
class CustomText extends StatelessWidget {
  final String text; // The text to be displayed
  final double fontSize; // Font size of the text
  final Color color; // Color of the text
  final FontWeight fontWeight; // Font weight (bold, normal, etc.)
  final TextAlign textAlign; // Alignment of the text
  final int maxLines; // Number of maximum lines for text
  final TextDecoration? decoration; // Text decoration (underline, line-through, etc.)
  final Color? decorationColor; // Color of the text decoration
  final double? decorationThickness; // Thickness of the text decoration

  // Constructor for the CustomText Widget
  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 14.0, // Default font size is 14
    this.color = Colors.black, // Default color is black
    this.fontWeight = FontWeight.normal, // Default font weight is normal
    this.textAlign = TextAlign.left, // Default alignment is left
    this.maxLines = 2, // Default max lines is 1
    this.decoration, // Optional text decoration
    this.decorationColor, // Optional decoration color
    this.decorationThickness, // Optional decoration thickness
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: decoration, // Apply the decoration
        decorationColor: decorationColor, // Set the decoration color
        decorationThickness: decorationThickness, // Set the decoration thickness
      ),
      textAlign: textAlign,
      maxLines: maxLines, // Limit the number of lines for the text
      overflow: TextOverflow.ellipsis, // Optional: Handle overflow with ellipsis
    );
  }
}
