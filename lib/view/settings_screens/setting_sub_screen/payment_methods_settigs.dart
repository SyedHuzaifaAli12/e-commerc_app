import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';

class PaymentMethodSettingScreen extends StatefulWidget {
  const PaymentMethodSettingScreen({super.key});

  @override
  State<PaymentMethodSettingScreen> createState() =>
      _PaymentMethodSettingScreenState();
}

class _PaymentMethodSettingScreenState
    extends State<PaymentMethodSettingScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const CustomText(
                text: "Payment Method",
                fontSize: 18,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CustomContainer(
                        borderRadius: BorderRadius.circular(15),
                        height: 200,
                        width: 60,
                        color: themebuttoncolor,
                        child: InkWell(
                          onTap: () {
                            addCardShowModelSheet();
                          },
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: themewhitecolor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: CustomContainer(
                                  borderRadius: BorderRadius.circular(15),
                                  height: 200,
                                  width: 350,
                                  networkImageUrl:
                                      "https://taf.co.id/media/1a87ffc3221a32c98b03a69d8eff505e",
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CustomContainer(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          height: 70,
                          borderRadius: BorderRadius.circular(20),
                          color: themebackgroundcolor,
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_bag,
                                color: index == 1
                                    ? themepinkcolor
                                    : themebuttoncolor,
                                size: 35,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "April,19 2020 12:31"),
                                  CustomText(
                                    text: "Order #92287157",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CustomText(
                                text: index == 0
                                    ? "-\$14,00"
                                    : index == 1
                                        ? "-\$16,00"
                                        : index == 2
                                            ? "-\$214,00"
                                            : index == 3
                                                ? "-\$12,00"
                                                : "-\$14,00",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: index == 1
                                    ? themepinkcolor
                                    : themeblackcolor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  addCardShowModelSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => CustomContainer(
          height: 500,
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const CustomContainer(
                height: 100,
                color: themebackgroundcolor,
                child: Row(
                  children: [
                    CustomText(
                      text: "Add Card",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Card Holder",
                      fontSize: 18,
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
                      text: "Card Number",
                      fontSize: 18,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Valid",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                                width: 215,
                                child: CustomTextField(
                                  hintText: "Required",
                                  isfilled: true,
                                  filledColor: themebackgroundcolor,
                                  padding: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15)),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "CVV",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 215,
                              child: CustomTextField(
                                hintText: "Required",
                                isfilled: true,
                                filledColor: themebackgroundcolor,
                                padding: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
