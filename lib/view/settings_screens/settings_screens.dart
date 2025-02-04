import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/theme/colors.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_container.dart';

class SettingsScreens extends StatefulWidget {
  const SettingsScreens({super.key});

  @override
  State<SettingsScreens> createState() => _SettingsScreensState();
}

class _SettingsScreensState extends State<SettingsScreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: themewhitecolor,
          automaticallyImplyLeading: false,
          title: const CustomText(
            text: "Settings",
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: themeblackcolor,
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Personal",
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: themeblackcolor,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  3,
                  (index) => Column(
                    children: [
                      ListTile(
                        onTap: () {
                          if (index == 0) {
                            Go.named(context, RouteName.profileSettings);
                          } else if (index == 1) {
                            Go.named(context,
                                RouteName.shippingAddressSettingScreen);
                          } else if (index == 2) {
                            Go.named(
                                context, RouteName.paymentMethodSettingScreen);
                          }
                        },
                        contentPadding: EdgeInsets.zero,
                        leading: CustomText(
                          text: index == 0
                              ? "Profile"
                              : index == 1
                                  ? "Shipping Address"
                                  : "Payment methods",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: themeblackcolor,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                        // title:  const CustomText(
                        //   text: "Personal",
                        //   fontSize: 25,
                        //   fontWeight: FontWeight.bold,
                        //   color: themeblackcolor,
                        // ) ,
                        // minLeadingWidth: 270,
                      ),
                      const Divider()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Shops",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeblackcolor,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (index == 0) {
                            Go.named(context, RouteName.countryListScreen);
                          } else if (index == 1) {
                            Go.named(context, RouteName.currencySettingScreen);
                          } else if (index == 2) {
                            Go.named(context, RouteName.sizeSettingScreen);
                          } else {
                            Go.named(
                                context, RouteName.termsAndConditionScreen);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: index == 0
                                    ? "Country"
                                    : index == 1
                                        ? "Currency"
                                        : index == 2
                                            ? "Sizes"
                                            : "Terms & Conditions",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: themeblackcolor,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: index == 0
                                        ? "Vietnam"
                                        : index == 1
                                            ? "\$ USD"
                                            : index == 2
                                                ? "UK"
                                                : "",
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                    color: themeblackcolor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(Icons.arrow_forward_ios_outlined),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Accounts",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeblackcolor,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  2,
                  (index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (index == 0) {
                            Go.named(context, RouteName.languageSettingScreen);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: index == 0 ? "Language" : "About Slada",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: themeblackcolor,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: index == 0 ? "English" : "",
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                    color: themeblackcolor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(Icons.arrow_forward_ios_outlined),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  showDialogFor2Seconds(context, size);
                },
                child: const CustomText(
                  text: "Delete My Account",
                  fontSize: 18,
                  color: themepinkcolor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                text: "Slada",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeblackcolor,
              ),
              const CustomText(
                text: "Version 1.0 April, 2020",
                fontSize: 16,
                color: themeblackcolor,
              ),
            ],
          ),
        )));
  }

  void showDialogFor2Seconds(BuildContext context, size) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: size.height / 100 * 25,
                width: size.width / 100 * 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "You are going to delete\nyour account",
                        style: TextStyle(
                          color: themeblackcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "You won't be able to restore your data",
                        style: TextStyle(
                          color: themeblackcolor,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          2,
                          (index) => Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CustomContainer(
                              height: 50,
                              width: 120,
                              color:
                                  index == 0 ? themeblackcolor : themepinkcolor,
                              child: Center(
                                child: CustomText(
                                  text: index == 0 ? "Cancel" : "Delete",
                                  color: themewhitecolor,fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -50,
                  left: 50,
                  right: 50,
                  child: CustomContainer(
                    height: 80,
                    width: 80,
                    shape: BoxShape.circle,
                    color: themewhitecolor,
                    boxShadow: BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      offset: const Offset(3, 5),
                      color: themeblackcolor.withOpacity(0.1),
                    ),
                    child: const CustomContainer(
                      shape: BoxShape.circle,
                      color: themebackgroundPinkcolor,
                      child: Center(
                        child: Icon(
                          Icons.help,
                          color: themepinkcolor,
                          size: 35,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        );
      },
    );

    // Dialog ko 2 seconds baad band karna
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Dialog close karna
    });
  }
}
