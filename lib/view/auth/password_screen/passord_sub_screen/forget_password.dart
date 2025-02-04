import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/view/auth/password_screen/passord_sub_screen/phone_verification.dart';

import 'package:e_commerce/widget/container_button.dart';
import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool ischecked = false;
  int? status;
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
                "How you would like to restore\nyour password?",
                style: TextStyle(
                  color: themeblackcolor,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                status = index;
                              });
                            },
                            child: Container(
                                height: 38,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: index == 0
                                      ? themebackgroundcolor
                                      : themebackgroundPinkcolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Text(
                                        index == 0 ? "SMS" : "Email",
                                        style: TextStyle(
                                            color: index == 0
                                                ? themebuttoncolor
                                                : themeblackcolor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width:
                                              25, // Size of the circular checkbox
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: status == index
                                                ? Colors.blue
                                                : Colors
                                                    .transparent, // Checked color
                                            shape: BoxShape
                                                .circle, // Circular shape
                                            border: Border.all(
                                                color: themewhitecolor,
                                                width:
                                                    2), // Border color and thickness
                                          ),
                                          child: status == index
                                              ? const Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                  size: 15,
                                                ) // Tick mark when checked
                                              : null, // No icon when unchecked
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        )),
              ),
              const Spacer(),
              ContainerButton(
                  onTap: () {
                    if (status == 0) {
                      // Go.route(
                      //     context,
                      //     const PhoneVerification(
                      //         hintText: "Enter your Phone Number"));
                      // context.pushNamed( RouteName.phoneVerification,pathParameters:{} );
                      Go.namedReplace(context, RouteName.phoneVerification,
                          params: {
                            'hintText': "enter phone number",
                          });
                    } else if (status == 1) {
                      Go.route(
                          context,
                          const PhoneVerification(
                              hintText: "Enter your Email"));
                      //   Go.named(
                      //       context, RouteName.resetPasswordScreen);
                    }
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

  circularCustomCheckbox(index) {
    return StatefulBuilder(
      builder: (context, setState) {
        return InkWell(
          onTap: () {
            setState(() {
              ischecked != ischecked;
            });
          },
          child: Container(
            width: 25, // Size of the circular checkbox
            height: 25,
            decoration: BoxDecoration(
              color:
                  ischecked ? Colors.blue : Colors.transparent, // Checked color
              shape: BoxShape.circle, // Circular shape
              border: Border.all(
                  color: themewhitecolor,
                  width: 2), // Border color and thickness
            ),
            child: ischecked
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ) // Tick mark when checked
                : null, // No icon when unchecked
          ),
        );
      },
    );
  }
}
