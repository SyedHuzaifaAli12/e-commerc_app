import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../widget/container_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/png/Group 4 (1).png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 110, right: 20, left: 20, bottom: 20),
            child: BounceInDown(
              duration: const Duration(seconds: 1),
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
                    "Hellow, Romina!!",
                    style: TextStyle(
                        color: themeblackcolor,
                        fontSize: 34,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      hintText: "Enter your passsword",
                      filled: true,
                      fillColor: themelightgreycolor,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: themebuttoncolor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: themelightgreycolor)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerButton(
                      onTap: () {
                        Go.namedReplace(context, RouteName.hellowCardScreen);
                      },
                      text: "Next",
                      textcolor: themewhitecolor,
                      height: 60,
                      width: double.infinity,
                      colors: themebuttoncolor),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Go.named(context, RouteName.forgetPasswordScreen);
                    },
                    child: const Text(
                      "Forget your password?",
                      style: TextStyle(
                        color: themebuttoncolor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                      child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not You?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: themebuttoncolor,
                        child: Icon(
                          Icons.arrow_forward,
                          color: themewhitecolor,
                          size: 18,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
