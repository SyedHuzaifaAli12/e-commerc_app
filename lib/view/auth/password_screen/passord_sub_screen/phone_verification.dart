import 'package:flutter/material.dart';

import '../../../../router_structure/go.routes.dart';
import '../../../../router_structure/navigator.dart';
import '../../../../theme/colors.dart';
import '../../../../widget/container_button.dart';

class PhoneVerification extends StatefulWidget {
  final String hintText;
  const PhoneVerification({super.key, required this.hintText});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  bool ischecked = false;

  // TextEditingController hintText = TextEditingController();
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
                    hintText: widget.hintText,
                    filled: true,
                    fillColor: themelightgreycolor,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: themebuttoncolor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            const BorderSide(color: themelightgreycolor)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ContainerButton(
                    onTap: () {
                      Go.namedReplace(context, RouteName.smsRecoverPassword);
                    },
                    text: "Next",
                    textcolor: themewhitecolor,
                    height: 60,
                    width: double.infinity,
                    colors: themebuttoncolor),
                const SizedBox(
                  height: 10,
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
    );
  }
}
