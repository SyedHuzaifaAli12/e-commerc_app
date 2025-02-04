import 'dart:async';

import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/container_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../theme/colors.dart';

class SmsRecoverPassword extends StatefulWidget {
  const SmsRecoverPassword({super.key});

  @override
  State<SmsRecoverPassword> createState() => _SmsRecoverPasswordState();
}

class _SmsRecoverPasswordState extends State<SmsRecoverPassword> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Go.named(context, RouteName.otpScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png/Group 2 (1).png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 220, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: themewhitecolor,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr6YfWNqIOUwks1bn2xLzO0NmQlOSPXk4UTA&s"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password Recovery",
                style: TextStyle(
                    color: themeblackcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Enter 4-digits code we sent you\non your phone number",
                style: TextStyle(
                  color: themeblackcolor,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "+98*******00",
                style: TextStyle(
                  color: themeblackcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const WormEffect(
                  dotColor: themelightgreycolor,
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
              const Spacer(),
              ContainerButton(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const SimpleDailog(
                        height: 200,
                        width: 350,
                      );
                    },
                  );
                },
                text: "Send Again",
                colors: themepinkcolor,
                textcolor: themewhitecolor,
                height: 50,
                width: 220,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Go.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SimpleDailog extends StatelessWidget {
  final double height;
  final double? width;
  const SimpleDailog({super.key, this.height = 100, this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          content: SizedBox(
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You reached out maximum\namount of attempts.\nPlease, try later.",
                  style: TextStyle(
                    color: themeblackcolor,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ContainerButton(
                    onTap: () {
                      Go.pop(context);
                    },
                    text: "Okay",
                    textcolor: themewhitecolor,
                    height: 45,
                    width: 180,
                    colors: themeblackcolor),
              ],
            ),
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
