import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../theme/colors.dart';

class MyActivityScreen extends StatefulWidget {
  const MyActivityScreen({super.key});

  @override
  State<MyActivityScreen> createState() => _MyActivityScreenState();
}

class _MyActivityScreenState extends State<MyActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: themewhitecolor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(2, 3),
                            color: themeblackcolor.withOpacity(0.2))
                      ]),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZBdFqBPjGbRgnPCwJ54ulRrDDgj_C6DLFw&s"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CustomText(
                    text: "My Activity",
                    color: themeblackcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                const Spacer(),
                Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              onTap: () {
                                if (index == 0) {
                                  Go.named(
                                    context,
                                    RouteName.voucherScreen,
                                    params: {
                                      "profileImg":
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZBdFqBPjGbRgnPCwJ54ulRrDDgj_C6DLFw&s"
                                    },
                                  );
                                } else if (index == 1) {
                                  Go.named(context, RouteName.chatScreen);
                                } else if (index == 2) {
                                  Go.named(context, RouteName.settingsScreen);
                                }
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: themebackgroundcolor,
                                child: Icon(
                                  index == 0
                                      ? Icons.document_scanner_outlined
                                      : index == 1
                                          ? Icons.chat_outlined
                                          : Icons.settings_outlined,
                                  color: themebuttoncolor,
                                ),
                              ),
                            ),
                          )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomContainer(
              height: 50,
              width: double.infinity,
              color: themelightgreycolor,
              borderRadius: BorderRadius.circular(25),
              child: const Center(
                child: CustomText(
                  text: "April",
                  color: themebuttoncolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                CustomContainer(
                  padding: EdgeInsets.zero,
                  width: 370,
                  height: 260,
                  color: themewhitecolor,
                  shape: BoxShape.circle,
                  boxShadow: BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 5,
                    color: themeblackcolor.withOpacity(0.1),
                  ),
                  child: CircularPercentIndicator(
                    linearGradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.red, Colors.yellow, Colors.blue],
                    ),
                    animation: true,
                    animationDuration: 20,
                    radius: 110.0,
                    lineWidth: 20,
                    percent: 1.0,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomContainer(
                        padding: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        color: themewhitecolor,
                        shape: BoxShape.circle,
                        boxShadow: BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: themeblackcolor.withOpacity(0.1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Total",
                              color: themeblackcolor,
                              fontSize: 22,
                            ),
                            CustomText(
                              text: "\$365,00",
                              color: themeblackcolor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: themebuttoncolor,
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: themebuttoncolor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomContainer(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          color:
                              index == 0 ? themebuttoncolor : themebrowncolor,
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                            child: CustomText(
                              text: index == 0
                                  ? "Clothing \$183,00"
                                  : "Lingerie \$92,00",
                              color: themewhitecolor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomContainer(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          color: index == 0 ? themeorangecolor : themepinkcolor,
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                            child: CustomText(
                              text:
                                  index == 0 ? "Shoes \$47,00" : "Bags \$43,00",
                              color: themewhitecolor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            CustomContainer(
                              padding: EdgeInsets.zero,
                              height: 100,
                              width: 100,
                              color: themewhitecolor,
                              shape: BoxShape.circle,
                              boxShadow: BoxShadow(
                                blurRadius: 5,
                                offset: const Offset(2, 3),
                                spreadRadius: 5,
                                color: themeblackcolor.withOpacity(0.1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: themebuttoncolor,
                                    child: CustomText(
                                      text: index == 0
                                          ? "12"
                                          : index == 1
                                              ? "7"
                                              : "5",
                                      fontSize: 30,
                                      color: themewhitecolor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: index == 0
                                  ? "Order"
                                  : index == 1
                                      ? "Recieved"
                                      : "To Recieved",
                              color: themeblackcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      )),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Go.named(context, RouteName.orderHistoryScreen, params: {
                  "profileImg":
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZBdFqBPjGbRgnPCwJ54ulRrDDgj_C6DLFw&s"
                });
              },
              child: const CustomContainer(
                height: 60,
                width: double.infinity,
                color: themebuttoncolor,
                child: Center(
                  child: CustomText(
                    text: "Order History",
                    fontSize: 22,
                    color: themewhitecolor,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
