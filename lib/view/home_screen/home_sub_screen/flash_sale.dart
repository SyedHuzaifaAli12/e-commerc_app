import 'package:e_commerce/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';
import '../../profile_screen/profile_screen.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomContainer(
      padding: EdgeInsets.zero,
      height: double.infinity,
      width: double.infinity,
      assetImageUrl: "assets/images/png/Group 2 (1).png",
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const CustomText(
                          text: "Flash Sale",
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.timer_outlined,
                          color: themewhitecolor,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: CustomContainer(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                height: 35,
                                color: themewhitecolor,
                                borderRadius: BorderRadius.circular(12),
                                child: Center(
                                  child: CustomText(
                                    text: index == 0
                                        ? "00"
                                        : index == 1
                                            ? "36"
                                            : "58",
                                    color: themeblackcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const CustomText(
                      text: "Choose your discount",
                      fontSize: 18,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      clipBehavior: Clip.none,
                      children: [
                        CustomContainer(
                          padding: EdgeInsets.zero,
                          height: 50,
                          width: double.infinity,
                          borderRadius: BorderRadius.circular(12),
                          color: themelightgreycolor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              6,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: Row(
                                  children: [
                                    CustomText(
                                      text: index == 0
                                          ? "All"
                                          : index == 1
                                              ? "10%"
                                              : index == 2
                                                  ? "20%"
                                                  : index == 3
                                                      ? "30%"
                                                      : index == 4
                                                          ? "40%"
                                                          : "50%",
                                      fontSize: 22,
                                      color: themeblackcolor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              6,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: Row(
                                  children: [
                                    CustomContainer(
                                      borderColor: currentIndex == index
                                          ? themebuttoncolor
                                          : Colors.transparent,
                                      boxShadow: currentIndex == index
                                          ? BoxShadow(
                                              blurRadius: 2,
                                              spreadRadius: 2,
                                              offset: const Offset(2, 2),
                                              color: themeblackcolor
                                                  .withOpacity(0.2))
                                          : const BoxShadow(
                                              color: Colors.transparent),
                                      borderWidth: 3,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 70,
                                      borderRadius: BorderRadius.circular(35),
                                      color: currentIndex == index
                                          ? themewhitecolor
                                          : Colors.transparent,
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? "All"
                                              : index == 1
                                                  ? "10%"
                                                  : index == 2
                                                      ? "20%"
                                                      : index == 3
                                                          ? "30%"
                                                          : index == 4
                                                              ? "40%"
                                                              : "50%",
                                          fontSize: 22,
                                          color: currentIndex == index
                                              ? themeblackcolor
                                              : Colors.transparent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    currentIndex == 0
                        ? const DiscountScreens(
                            discountPer: "20%",
                          )
                        : currentIndex == 1
                            ? const DiscountScreens(discountPer: "10%")
                            : currentIndex == 2
                                ? const DiscountScreens(
                                    discountPer: "20%",
                                  )
                                : currentIndex == 3
                                    ? const DiscountScreens(
                                        discountPer: "30%",
                                      )
                                    : currentIndex == 4
                                        ? const DiscountScreens(
                                            discountPer: "40%",
                                          )
                                        : const DiscountScreens(
                                            discountPer: "50%",
                                          ),
                    currentIndex == 0
                        ? discountper2("10%")
                        : currentIndex == 1
                            ? discountper2("20%")
                            : currentIndex == 2
                                ? discountper2("30%")
                                : currentIndex == 3
                                    ? discountper2("40%")
                                    : currentIndex == 4
                                        ? discountper2("50%")
                                        : discountper2("60%"),
                    Row(
                      children: [
                        const CustomText(
                          text: "Most Popular",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                        const Spacer(),
                        const CustomText(
                          text: "See All",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: themebuttoncolor,
                            child: Icon(
                              Icons.arrow_forward,
                              color: themewhitecolor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              mostPopular(),
            ],
          ),
        ),
      ),
    ));
  }
}

class DiscountScreens extends StatefulWidget {
  final String? discountPer;
  const DiscountScreens({super.key, this.discountPer});

  @override
  State<DiscountScreens> createState() => _DiscountScreensState();
}

class _DiscountScreensState extends State<DiscountScreens> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          height: 200,
          width: double.infinity,
          borderColor: themelightgreycolor,
          assetImageUrl: "assets/images/png/Placeholder_01.jpg",
          borderWidth: 2,
          borderRadius: BorderRadius.circular(12),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 80,
                height: 35,
                color: Colors.green,
                child: Center(
                  child: CustomText(
                    text: "Live",
                    color: themewhitecolor,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CustomText(
              text: " ${widget.discountPer ?? ''} Discount",
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
            const Spacer(),
            const Icon(Icons.tune_outlined)
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          itemCount: 6,
          shrinkWrap: true,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 340, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Column(
              children: [
                CustomContainer(
                  padding: const EdgeInsets.all(8),
                  height: 220,
                  width: double.infinity,
                  color: themewhitecolor,
                  boxShadow: BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(2, 2),
                      color: themeblackcolor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(15),
                  child: CustomContainer(
                    padding: EdgeInsets.zero,
                    color: themegreytextcolor,
                    networkImageUrl: index == 0
                        ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                        : index == 1
                            ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                            : index == 2
                                ? "https://img.freepik.com/free-photo/woman-posing-jumping-while-holding-shopping-bags_23-2148684543.jpg"
                                : index == 3
                                    ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                                    : index == 4
                                        ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                                        : index == 5
                                            ? "https://img.freepik.com/free-photo/woman-posing-jumping-while-holding-shopping-bags_23-2148684543.jpg"
                                            : "",
                    borderRadius: BorderRadius.circular(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomContainer(
                          padding: EdgeInsets.zero,
                          borderRadius: BorderRadius.circular(8),
                          height: 25,
                          color: themepinkcolor,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: CustomText(
                                text: "-${widget.discountPer}",
                                color: themewhitecolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: "Lorem ipsum dolor sit amet consectetur.",
                        fontSize: 17,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: index == 0
                                ? "\$17,00"
                                : index == 1
                                    ? "\$32,00"
                                    : "\$21,00",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            text: index == 0
                                ? "\$17,00"
                                : index == 1
                                    ? "\$32,00"
                                    : "\$21,00",
                            fontWeight: FontWeight.w700,
                            color: themebackgroundPinkcolor,
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: themebackgroundPinkcolor,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}

discountper2(String discountper) {
  return Column(
    children: [
      CustomContainer(
        height: 200,
        width: double.infinity,
        borderRadius: BorderRadius.circular(12),
        networkImageUrl:
            "https://taf.co.id/media/1a87ffc3221a32c98b03a69d8eff505e",
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Big Sale",
                fontSize: 34,
                color: themewhitecolor,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: "Upto 50%",
                fontSize: 20,
                color: themewhitecolor,
                fontWeight: FontWeight.bold,
              ),
              Spacer(),
              CustomText(
                text: "Happening\nnow",
                fontSize: 18,
                color: themewhitecolor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          CustomText(
            text: " $discountper Discount",
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
          const Spacer(),
          const Icon(Icons.tune_outlined)
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        itemCount: 6,
        shrinkWrap: true,
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 340, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Column(
            children: [
              CustomContainer(
                padding: const EdgeInsets.all(8),
                height: 220,
                width: double.infinity,
                color: themewhitecolor,
                boxShadow: BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(2, 2),
                    color: themeblackcolor.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(15),
                child: CustomContainer(
                  padding: EdgeInsets.zero,
                  color: themegreytextcolor,
                  networkImageUrl: index == 0
                      ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                      : index == 1
                          ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                          : index == 2
                              ? "https://img.freepik.com/free-photo/woman-posing-jumping-while-holding-shopping-bags_23-2148684543.jpg"
                              : index == 3
                                  ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                                  : index == 4
                                      ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                                      : index == 5
                                          ? "https://img.freepik.com/free-photo/woman-posing-jumping-while-holding-shopping-bags_23-2148684543.jpg"
                                          : "",
                  borderRadius: BorderRadius.circular(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomContainer(
                        padding: EdgeInsets.zero,
                        borderRadius: BorderRadius.circular(8),
                        height: 25,
                        color: themepinkcolor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CustomText(
                              text: "- $discountper",
                              color: themewhitecolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Lorem ipsum dolor sit amet consectetur.",
                      fontSize: 17,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: index == 0
                              ? "\$17,00"
                              : index == 1
                                  ? "\$32,00"
                                  : "\$21,00",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: index == 0
                              ? "\$17,00"
                              : index == 1
                                  ? "\$32,00"
                                  : "\$21,00",
                          fontWeight: FontWeight.w700,
                          color: themebackgroundPinkcolor,
                          fontSize: 20,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: themebackgroundPinkcolor,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    ],
  );
}
