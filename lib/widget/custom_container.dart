import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child; // Content inside the container (like text or image)
  final Color? color; // Background color
  final double? width; // Container width
  final double? height; // Container height
  final EdgeInsetsGeometry? padding; // Padding
  final BorderRadius? borderRadius; // Border radius
  final BoxShadow? boxShadow; // Shadow effect
  final String? networkImageUrl; // Optional: Network image URL
  final String? assetImageUrl; // Optional: Asset image URL
  final Color? borderColor; // Border color
  final double? borderWidth; // Border width
  final BoxShape shape; // Shape of the box (rectangle or circle)

  // Constructor with required and optional parameters
  const CustomContainer({
    Key? key,
    this.child,
    this.color,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.boxShadow,
    this.networkImageUrl, // Network image URL
    this.assetImageUrl, // Asset image URL
    this.borderColor, // Border color
    this.borderWidth, // Border width
    this.shape = BoxShape.rectangle, // Default shape is rectangle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(10), // Default padding if none is provided
      decoration: BoxDecoration(
        color: color ?? Colors.white, // Default color if none is provided
        borderRadius: shape == BoxShape.rectangle ? (borderRadius ?? BorderRadius.circular(10)) : null, // Apply border radius only for rectangle
        boxShadow: boxShadow != null ? [boxShadow!] : [],
        border: borderColor != null && borderWidth != null
            ? Border.all(
                color: borderColor!, // Border color
                width: borderWidth!, // Border width
              )
            : null, // If no border color and width provided, no border will be set
        shape: shape, // Apply the shape
        image: networkImageUrl != null
            ? DecorationImage(
                image: NetworkImage(networkImageUrl!),
                fit: BoxFit.cover, // Fit the image to cover the container
              )
            : assetImageUrl != null
                ? DecorationImage(
                    image: AssetImage(assetImageUrl!),
                    fit: BoxFit.cover, // Fit the image to cover the container
                  )
                : null, // If no image URL is provided, no image will be set
      ),
      child: child,
    );
  }
}
