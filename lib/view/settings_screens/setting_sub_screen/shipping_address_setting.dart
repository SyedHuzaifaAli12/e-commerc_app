import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';
import '../../../widget/custom_textfield.dart';

class ShippingAddressSettingScreen extends StatefulWidget {
  const ShippingAddressSettingScreen({super.key});

  @override
  State<ShippingAddressSettingScreen> createState() =>
      _ShippingAddressSettingScreenState();
}

class _ShippingAddressSettingScreenState
    extends State<ShippingAddressSettingScreen> {
  @override
  Widget build(BuildContext context) {
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            Go.pop(context);
          },
          child: const CustomContainer(
            height: 50,
            color: themebuttoncolor,
            child: Center(
              child: CustomText(
                text: "Save Changes",
                fontSize: 20,
                color: themewhitecolor,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Shipping Address",
                fontSize: 18,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "country",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: "Choose Your Country",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  GestureDetector(
                    onTap: () {
                      Go.named(context, RouteName.countryListScreen);
                    },
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundColor: themebuttoncolor,
                      child: Icon(
                        Icons.arrow_forward,
                        color: themewhitecolor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Address",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                hintText: "Required",
                hintStyle: const TextStyle(color: themebluegreycolor),
                isfilled: true,
                filledColor: themebackgroundcolor,
                padding: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15)),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Town/City",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                hintText: "Required",
                hintStyle: const TextStyle(color: themebluegreycolor),
                isfilled: true,
                filledColor: themebackgroundcolor,
                padding: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15)),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Postcode",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                hintText: "Required",
                hintStyle: const TextStyle(color: themebluegreycolor),
                isfilled: true,
                filledColor: themebackgroundcolor,
                padding: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15)),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Phone Number",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomTextField(
                hintText: "Required",
                hintStyle: const TextStyle(color: themebluegreycolor),
                isfilled: true,
                filledColor: themebackgroundcolor,
                padding: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15)),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
