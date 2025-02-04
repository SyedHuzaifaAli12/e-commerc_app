import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/change_state.dart';
import '../../../theme/colors.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_text_widget.dart';

class LanguageSettingScreen extends StatefulWidget {
  const LanguageSettingScreen({super.key});

  @override
  State<LanguageSettingScreen> createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {
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
                    text: "Language",
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: List.generate(
                        4,
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
                                          ? "English"
                                          : index == 1
                                              ? "Français"
                                              : index == 2
                                                  ? "Русский"
                                                  : "Tiếng Việt ",
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
