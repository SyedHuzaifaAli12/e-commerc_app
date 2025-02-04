import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Center(
                child: Image.asset(
                  "assets/images/png/logo.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            CustomText(
              text: "About Shoppe",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              maxLines: 7,
              text:
                  "Shoppe - Shopping UI kit\"\  is likely a user interface (UI) kit designed to facilitate the development of e-commerce or shopping-related applications. UI kits are collections of pre-designed elements, components, and templates that developers and designers can use to create consistent and visually appealing user interfaces.",
              fontSize: 18,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text:
                  "If you need help or you have any questions, feel free to contact me by email.",
              fontSize: 18,
            ),

            const SizedBox(height: 10,),
            const CustomText(
              text: "hello@mydomain.com",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
