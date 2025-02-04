import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/change_state.dart';
import '../../../theme/colors.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_text_widget.dart';

class SizeSettingScreen extends StatefulWidget {
  const SizeSettingScreen({super.key});

  @override
  State<SizeSettingScreen> createState() => _SizeSettingScreenState();
}

class _SizeSettingScreenState extends State<SizeSettingScreen> {
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
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Consumer<ChangeStateVariables>(
            builder: (context, newValue, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Sizes",
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: GestureDetector(
                                onTap: () {
                                  newValue.stateChangeInt(index);
                                },
                                child: CustomContainer(
                                  padding: EdgeInsets.zero,
                                  borderRadius: BorderRadius.circular(15),
                                  color: newValue.selectIndex == index
                                      ? themebackgroundcolor
                                      : themelightgreycolor,
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    leading: CustomText(
                                      text: index == 0
                                          ? "US"
                                          : index == 1
                                              ? "EU"
                                              : "UK",
                                      fontSize: 20,
                                    ),
                                    trailing: Container(
                                      width:
                                          28, // Size of the circular checkbox
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: newValue.selectIndex == index
                                            ? themebuttoncolor
                                            : themebackgroundPinkcolor, // Checked color
                                        shape:
                                            BoxShape.circle, // Circular shape
                                        border: Border.all(
                                            color: themewhitecolor,
                                            width:
                                                2), // Border color and thickness
                                      ),
                                      child: newValue.selectIndex == index
                                          ? const Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 15,
                                            ) // Tick mark when checked
                                          : null, // No icon when unchecked
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  )
                ],
              );
            },
          )),
    );
  }
}
