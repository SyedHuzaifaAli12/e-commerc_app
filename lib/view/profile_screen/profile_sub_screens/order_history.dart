import 'dart:async';
import 'package:e_commerce/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../../router_structure/go.routes.dart';
import '../../../router_structure/navigator.dart';
import '../../../theme/colors.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_text_widget.dart';

class OrderHistoryScreen extends StatefulWidget {
  final String profileImg;
  const OrderHistoryScreen({super.key, required this.profileImg});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  void showDialogFor2Seconds(BuildContext context, size) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: size.height / 100 * 20,
                width: size.width / 100 * 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Done!",
                        style: TextStyle(
                          color: themeblackcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Thank you for your review",
                        style: TextStyle(
                          color: themeblackcolor,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            4,
                            (index) => const Icon(
                                  Icons.star,
                                  color: themeambercolor,
                                  size: 35,
                                )),
                      )
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
                      color: themebackgroundcolor,
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: themebuttoncolor,
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(widget.profileImg),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CustomText(
                      text: "History",
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
              Column(
                children: List.generate(
                    8,
                    (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomContainer(
                                height: 140,
                                width: 160,
                                padding: const EdgeInsets.all(5.0),
                                color: themewhitecolor,
                                boxShadow: BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: const Offset(2, 2),
                                    color: themeblackcolor.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(12),
                                child: Center(
                                  child: CustomContainer(
                                    padding: EdgeInsets.zero,
                                    color: themegreytextcolor,
                                    networkImageUrl: index == 0
                                        ? "https://media.istockphoto.com/id/1212973182/photo/close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model.jpg?s=612x612&w=0&k=20&c=_30ouEHJQkhNAaM4C7MXDke_YDMQUF_hrkGGv8w8If4="
                                        : index == 1
                                            ? "https://img.freepik.com/premium-photo/close-up-attractive-brunette-girl-smiling-happy-standing-white_1258-19158.jpg"
                                            : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqBoCxsNnttKEBSpzs8eouDHZ6pZvhDUCkWgGGL5aXa9peM5sMGz2Pu-S3rT14W1npVf0&usqp=CAU",
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 220,
                                    child: CustomText(
                                      text:
                                          "Lorem ipsum dolor sit amet consectetur.",
                                      color: themeblackcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const CustomText(
                                    text: "Order #92287157",
                                    color: themeblackcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: List.generate(
                                        2,
                                        (index) => Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (index == 1) {
                                                    reviewModelSheet(size);
                                                  }
                                                },
                                                child: CustomContainer(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  height: 40,
                                                  // width: 120,
                                                  color: index == 0
                                                      ? themelightgreycolor
                                                      : themewhitecolor,
                                                  borderColor: index == 0
                                                      ? themelightgreycolor
                                                      : themebuttoncolor,
                                                  borderWidth: 2,
                                                  child: Center(
                                                    child: CustomText(
                                                      text: index == 0
                                                          ? "April06"
                                                          : "Review",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18,
                                                      color: index == 0
                                                          ? themeblackcolor
                                                          : themebuttoncolor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      )),
    );
  }

  reviewModelSheet(size) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return CustomContainer(
          height: 500,
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomContainer(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  color: themebackgroundcolor,
                  child: Row(
                    children: [
                      CustomText(
                        text: "Review",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: themeblackcolor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(widget.profileImg),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Lorem ipsum dolor sit amet consectetur.",
                                fontSize: 16,
                              ),
                              CustomText(
                                text: "Order #92287157",
                                color: themeblackcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star_outline_outlined,
                                  color: themeyellowcolor,
                                  size: 55,
                                )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 130,
                        child: CustomTextField(
                          hintText: "Your comment",
                          hintStyle: const TextStyle(
                              fontSize: 22, color: themeblackcolor),
                          isfilled: true,
                          filledColor: themebackgroundcolor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Go.pop(context);
                          showDialogFor2Seconds(context, size);
                        },
                        child: const CustomContainer(
                          height: 60,
                          width: double.infinity,
                          color: themebuttoncolor,
                          child: Center(
                            child: CustomText(
                              text: "Sat it!",
                              fontSize: 22,
                              color: themewhitecolor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
