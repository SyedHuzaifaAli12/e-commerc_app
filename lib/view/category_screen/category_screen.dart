import 'package:e_commerce/Provider/change_state.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: "All Category",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  GestureDetector(
                    onTap: () {
                      Go.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              allCategory(),
            ],
          ),
        ),
      )),
    );
  }

  Widget allCategory() {
    return Consumer<ChangeStateVariables>(
      builder: (context, newValue, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  3,
                  (index) => GestureDetector(
                        onTap: () {
                          newValue.stateChangeInt(index);
                        },
                        child: CustomContainer(
                          padding: EdgeInsets.zero,
                          height: 50,
                          width: 130,
                          color: newValue.selectIndex == index
                              ? themebackgroundcolor
                              : themelightgreycolor,
                          borderColor: newValue.selectIndex == index
                              ? themebuttoncolor
                              : themelightgreycolor,
                          borderWidth: 1.5,
                          child: Center(
                            child: CustomText(
                              text: index == 0
                                  ? "All"
                                  : index == 1
                                      ? "Female"
                                      : "Male",
                              fontSize: 25,
                              color: newValue.selectIndex == index
                                  ? themebuttoncolor
                                  : themeblackcolor,
                            ),
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomContainer(
              padding: const EdgeInsets.all(5),
              height: 80,
              color: themewhitecolor,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(1, 2),
                  color: themeblackcolor.withOpacity(0.1)),
              child: Row(
                children: [
                  const CustomContainer(
                    height: 70,
                    width: 70,
                    networkImageUrl:
                        "https://cbx-prod.b-cdn.net/COLOURBOX61636332.jpg?width=800&height=800&quality=70",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CustomText(
                    text: "Clothing",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      newValue.expandedText();
                    },
                    child: Icon(
                      newValue.expandText
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 40,
                      color: themebuttoncolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            newValue.expandText
                ? Column(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomContainer(
                                      padding: EdgeInsets.zero,
                                      height: 50,
                                      // width: 200,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Dresses"
                                              : index == 1
                                                  ? "Pants"
                                                  : index == 2
                                                      ? "Skirts"
                                                      : index == 3
                                                          ? "Shorts"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomContainer(
                                      height: 50,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Polo"
                                              : index == 1
                                                  ? "Shirts"
                                                  : index == 2
                                                      ? "T-Shirts"
                                                      : index == 3
                                                          ? "Tunics"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )
                : const SizedBox.shrink(),
            CustomContainer(
              padding: const EdgeInsets.all(5),
              height: 80,
              color: themewhitecolor,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(1, 2),
                  color: themeblackcolor.withOpacity(0.1)),
              child: Row(
                children: [
                  const CustomContainer(
                    height: 70,
                    width: 70,
                    networkImageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYOrbO-HpLzgpCQCUno6o9BaxL2kKaNswC-Q&s",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CustomText(
                    text: "Shoes",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      newValue.expandedText1();
                    },
                    child: Icon(
                      newValue.expandText1
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 40,
                      color: themebuttoncolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            newValue.expandText1
                ? Column(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomContainer(
                                      padding: EdgeInsets.zero,
                                      height: 50,
                                      // width: 200,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Dresses"
                                              : index == 1
                                                  ? "Pants"
                                                  : index == 2
                                                      ? "Skirts"
                                                      : index == 3
                                                          ? "Shorts"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomContainer(
                                      height: 50,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Polo"
                                              : index == 1
                                                  ? "Shirts"
                                                  : index == 2
                                                      ? "T-Shirts"
                                                      : index == 3
                                                          ? "Tunics"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )
                : const SizedBox.shrink(),
            CustomContainer(
              padding: const EdgeInsets.all(5),
              height: 80,
              color: themewhitecolor,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(1, 2),
                  color: themeblackcolor.withOpacity(0.1)),
              child: Row(
                children: [
                  const CustomContainer(
                    height: 70,
                    width: 70,
                    networkImageUrl:
                        "https://wowbags.pk/cdn/shop/files/459266061_122134384970329126_8925721786142892221_n.jpg?v=1726312764",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CustomText(
                    text: "Bags",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      newValue.expandedText2();
                    },
                    child: Icon(
                      newValue.expandText2
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 40,
                      color: themebuttoncolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            newValue.expandText2
                ? Column(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomContainer(
                                      padding: EdgeInsets.zero,
                                      height: 50,
                                      // width: 200,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Dresses"
                                              : index == 1
                                                  ? "Pants"
                                                  : index == 2
                                                      ? "Skirts"
                                                      : index == 3
                                                          ? "Shorts"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomContainer(
                                      height: 50,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Polo"
                                              : index == 1
                                                  ? "Shirts"
                                                  : index == 2
                                                      ? "T-Shirts"
                                                      : index == 3
                                                          ? "Tunics"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )
                : const SizedBox.shrink(),
            CustomContainer(
              padding: const EdgeInsets.all(5),
              height: 80,
              color: themewhitecolor,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(1, 2),
                  color: themeblackcolor.withOpacity(0.1)),
              child: Row(
                children: [
                  const CustomContainer(
                    height: 70,
                    width: 70,
                    networkImageUrl:
                        "https://lh6.googleusercontent.com/proxy/uH1lsyVkOUzZbfoLwTlE664Fdvnb7E-oFGFUpadCZjproBa1Hczf3z2rYzux9Bwku3vFDYvFMRmuLkfgHlAlXWPtRIkGd0CdlRyWqn4v6a5Hya5Gl9ZbqIBpdZ6jKgTRbHSxhmSNupfdLyzxmg",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CustomText(
                    text: "Lingerie",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      newValue.expandedText3();
                    },
                    child: Icon(
                      newValue.expandText3
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 40,
                      color: themebuttoncolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            newValue.expandText3
                ? Column(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomContainer(
                                      padding: EdgeInsets.zero,
                                      height: 50,
                                      // width: 200,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Dresses"
                                              : index == 1
                                                  ? "Pants"
                                                  : index == 2
                                                      ? "Skirts"
                                                      : index == 3
                                                          ? "Shorts"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomContainer(
                                      height: 50,
                                      borderColor: themebackgroundPinkcolor,
                                      borderWidth: 1.5,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "Polo"
                                              : index == 1
                                                  ? "Shirts"
                                                  : index == 2
                                                      ? "T-Shirts"
                                                      : index == 3
                                                          ? "Tunics"
                                                          : index == 4
                                                              ? "Jackets"
                                                              : "Hoodies",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )
                : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
