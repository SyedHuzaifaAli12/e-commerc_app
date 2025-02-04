import 'package:flutter/material.dart';

import '../../../router_structure/go.routes.dart';
import '../../../router_structure/navigator.dart';
import '../../../theme/colors.dart';
import '../../../widget/container_button.dart';
import 'package:pinput/pinput.dart';

class OtPScreen extends StatefulWidget {
  const OtPScreen({super.key});

  @override
  State<OtPScreen> createState() => _OtPScreenState();
}

class _OtPScreenState extends State<OtPScreen> {
  var code = "";
  final dafaultpintheme = PinTheme(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      // color: themebuttoncolor,
      border: Border.all(
        color: themebuttoncolor,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    textStyle: const TextStyle(
        color: themewhitecolor, fontWeight: FontWeight.bold, fontSize: 30),
  );
  final submitedpintheme = PinTheme(
      decoration: BoxDecoration(
        color: themebuttoncolor,
        border: Border.all(
          color: themebuttoncolor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 80,
      width: 80,
      textStyle: const TextStyle(
          color: themewhitecolor, fontWeight: FontWeight.bold, fontSize: 30));
  final focuspintheme = PinTheme(
      decoration: BoxDecoration(
        color: themebuttoncolor,
        border: Border.all(
          color: themebuttoncolor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 80,
      width: 80,
      textStyle: const TextStyle(
          color: themewhitecolor, fontWeight: FontWeight.bold, fontSize: 30));

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
                Pinput(
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  focusedPinTheme: focuspintheme,
                  submittedPinTheme: submitedpintheme,
                  defaultPinTheme: dafaultpintheme,
                  onChanged: (value) {
                    code = value;
                  },
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                const SizedBox(
                  height: 20,
                ),
                ContainerButton(
                    onTap: () {
                      Go.named(context, RouteName.resetPasswordScreen);
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
