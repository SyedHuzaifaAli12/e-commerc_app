import 'package:e_commerce/router_structure/navigator.dart';
import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import '../../../../widget/container_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
        child: SingleChildScrollView(
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
                  "Setup New Password",
                  style: TextStyle(
                      color: themeblackcolor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Please, setup a new password for\nyour account",
                  style: TextStyle(
                    color: themeblackcolor,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "New passsword",
                    filled: true,
                    fillColor: themelightgreycolor,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: themebuttoncolor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: themelightgreycolor)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Repeat passsword",
                    filled: true,
                    fillColor: themelightgreycolor,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: themebuttoncolor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: themelightgreycolor)),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ContainerButton(
                    onTap: () {},
                    height: 60,
                    width: double.infinity,
                    text: "Save",
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
        ),
      )),
    );
  }
}
