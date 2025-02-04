import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';

import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: themewhitecolor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            color: themelightgreycolor)
                      ]),
                  child: Center(
                    child: Image.asset("assets/images/png/logo.png"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Shoppe",
                  style: TextStyle(
                      color: themeblackcolor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Beautiful eCommerce UI Kit\nfor your online store",
                  style: TextStyle(
                    color: themeblackcolor,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Go.namedReplace(context, RouteName.signUpScreen);
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: themebuttoncolor,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Let's get Started",
                          style: TextStyle(
                            color: themewhitecolor,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "I already have an account",
                        style: TextStyle(
                          color: themeblackcolor,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Go.namedReplace(context, RouteName.logInScreen);
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: themebuttoncolor,
                          child: Icon(
                            Icons.arrow_forward,
                            color: themewhitecolor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
