// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:e_commerce/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularCheckbox extends StatefulWidget {
  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  bool _isChecked =
      false; // State to track whether the checkbox is checked or not

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked; // Toggle the checkbox state
        });
      },
      child: Container(
        width: 25, // Size of the circular checkbox
        height: 25,
        decoration: BoxDecoration(
          color: _isChecked ? Colors.blue : Colors.transparent, // Checked color
          shape: BoxShape.circle, // Circular shape
          border: Border.all(
              color: themewhitecolor, width: 2), // Border color and thickness
        ),
        child: _isChecked
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              ) // Tick mark when checked
            : null, // No icon when unchecked
      ),
    );
  }
}
