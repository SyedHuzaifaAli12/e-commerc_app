import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Provider/auth_providers/auth_provider.dart';
import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/colors.dart';
import '../../widget/container_button.dart';
import '../../widget/error_message.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override

  // ignore: override_on_non_overriding_member
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void LoginUser() {
    if (email.text.isEmpty) {
      ErrorMessage(context, "plz enter ur emial", themeredcolor);
    } else if (password.text.isEmpty) {
      ErrorMessage(context, "plz enter password", themeredcolor);
    } else {
      Provider.of<AuthProvider>(context, listen: false).SignInWithEmailPassword(
          email: email.text, password: password.text, context: context);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png/Group 3 (1).png"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 320, left: 20, right: 20, bottom: 20),
              child: BounceInDown(
                duration: const Duration(seconds: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: themeblackcolor,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Good to see you back!",
                          style: TextStyle(
                            color: themeblackcolor,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.favorite,
                          color: themeblackcolor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        hintText: "Email",
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
                    TextField(
                      controller: password,
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
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Go.named(context, RouteName.forgetPasswordScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Forget your password?",
                            style: TextStyle(
                              color: themebuttoncolor,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ContainerButton(
                        onTap: () {
                          LoginUser();
                        },
                        height: 60,
                        width: double.infinity,
                        text: "Next",
                        textcolor: themewhitecolor,
                        colors: themebuttoncolor),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
