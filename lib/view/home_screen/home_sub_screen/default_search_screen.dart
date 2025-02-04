import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class DefaultSearchScreen extends StatefulWidget {
  const DefaultSearchScreen({super.key});

  @override
  State<DefaultSearchScreen> createState() => _DefaultSearchScreenState();
}

class _DefaultSearchScreenState extends State<DefaultSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(
          text: "No item match",
          fontSize: 22,
        ),
      ),
    );
  }
}
