import 'package:flutter/material.dart';

void ErrorMessage(context, String message, Color coulors) {
  final snack = SnackBar(
    content: Text(
      message,
      style: TextStyle(fontSize: 18),
    ),
    backgroundColor: coulors, // Custom background color
    duration: Duration(seconds: 3), // How long the SnackBar will be visible
    shape: RoundedRectangleBorder(
      side: BorderSide(color: coulors),
      // Rounded corners for the SnackBar
      borderRadius: BorderRadius.circular(12),
    ),
    behavior: SnackBarBehavior.floating, // Optional: Floating SnackBar
    margin: EdgeInsets.all(10), //
  );

  ScaffoldMessenger.of(context).showSnackBar(snack);
}
