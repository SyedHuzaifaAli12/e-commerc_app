import 'package:e_commerce/Provider/text_field_provider.dart';
import 'package:e_commerce/view/home_screen/home_screen.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({super.key});

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CustomText(
                        text: "Search",
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: themeblackcolor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Consumer<TextFieldProvider>(
                        builder: (context, newValue, child) {
                          return Expanded(
                            child: CustomTextField(
                              controller: newValue.searchController,
                              filledColor: themebackgroundcolor,
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                  color: themebuttoncolor, fontSize: 18),
                              isfilled: true,
                              borderRadius: 25,
                              focusedBorderColor: themebackgroundcolor,
                              suffixIcon: const Icon(
                                Icons.camera_alt_outlined,
                                color: themebuttoncolor,
                                size: 30,
                              ),
                              onSubmitted: (_) => {
                                newValue.onSearch(context),
                                newValue.dispose()
                              },
                              padding: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20)),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: "Search history",
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: themeblackcolor,
                      ),
                      GestureDetector(
                        child: const CircleAvatar(
                          radius: 18,
                          backgroundColor: themelightgreycolor,
                          child: Icon(
                            Icons.delete_outline,
                            color: themebrowncolor,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              child: CustomContainer(
                                padding: EdgeInsets.zero,
                                color: themelightgreycolor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Column(
                                    children: [
                                      CustomText(
                                        text: index == 0
                                            ? "Socks"
                                            : index == 1
                                                ? "Red Dress"
                                                : index == 2
                                                    ? "Sunglasses"
                                                    : index == 3
                                                        ? "Mustard Pants"
                                                        : "Bo-s Skirt",
                                        fontSize: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                  ),
                  const CustomText(
                    text: "Recommendation",
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: themeblackcolor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: CustomContainer(
                          padding: EdgeInsets.zero,
                          color: themelightgreycolor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              children: [
                                CustomText(
                                  text: index == 0
                                      ? "Skirt"
                                      : index == 1
                                          ? "Accessories"
                                          : index == 2
                                              ? "Black T-Shirt"
                                              : index == 3
                                                  ? "Jeans"
                                                  : "White Shoes",
                                  fontSize: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: CustomText(
                text: "Discover",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeblackcolor,
              ),
            ),
            newItems(),
          ],
        ),
      )),
    );
  }
}
