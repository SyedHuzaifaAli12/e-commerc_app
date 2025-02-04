import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class ToRecievedScreen extends StatefulWidget {
  const ToRecievedScreen({super.key});

  @override
  State<ToRecievedScreen> createState() => _ToRecievedScreenState();
}

class _ToRecievedScreenState extends State<ToRecievedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "To Recieve",
                      color: themeblackcolor,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                    CustomText(
                      text: "My Orders",
                      color: themeblackcolor,
                      fontSize: 20,
                    )
                  ],
                ),
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
                                          Go.named(
                                              context, RouteName.chatScreen);
                                        } else if (index == 2) {
                                          Go.named(context,
                                              RouteName.settingsScreen);
                                        }
                                     



                              },
                        
                                     
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: themelightgreycolor,
                                child: Icon(
                                  index == 0
                                      ? Icons.document_scanner_outlined
                                      : index == 1
                                          ? Icons.chat_outlined
                                          : Icons.settings_outlined,
                                  color: themebuttoncolor,
                                  size: 30,
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
            toRecievedWidget(),
          ],
        ),
      ))),
    );
  }

  toRecievedWidget() {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, primaryIndex) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                padding: EdgeInsets.all(5),
                color: themewhitecolor,
                boxShadow: BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 3,
                    offset: const Offset(1, 2),
                    color: themeblackcolor.withOpacity(0.1)),
                height: 140,
                width: 140,
                child: GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      height: 40,
                      color: themebuttoncolor,
                      width: 40,
                      networkImageUrl: primaryIndex == 0
                          ? index == 0
                              ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpT1hii-1xJmd7Zqi6UUbTUATBDnLhyaZF6g&s"
                              : index == 1
                                  ? "https://thumbs.dreamstime.com/b/portrait-beautiful-young-african-woman-white-dress-over-black-background-studio-picture-adult-afro-american-attractive-155294281.jpg"
                                  : index == 2
                                      ? "https://photos.peopleimages.com/picture/202307/2709617-fashion-portrait-and-asian-woman-in-studio-with-confidence-stye-and-cool-clothing-against-a-white-background.-stylish-pose-and-japanese-female-model-with-trendy-outfit-attitude-and-aesthetic-fit_400_400.jpg"
                                      : "https://st3.depositphotos.com/23039632/36840/i/450/depositphotos_368407326-stock-photo-fashion-look-girl-pants-stripes.jpg"
                          : primaryIndex == 1
                              ? index == 0
                                  ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMAGvd3hmbwGt8PCAbrDmjxPTv0z0wHIPkAg&s"
                                  : index == 1
                                      ? "https://img.freepik.com/premium-photo/black-modern-brand-new-shoes-standing-wooden-table-shop_146671-48396.jpg"
                                      : index == 2
                                          ? "https://media.istockphoto.com/id/1378754627/photo/low-angle-bottom-view-of-sports-running-and-fitness-shoe-sneaker-on-orange-background.jpg?s=612x612&w=0&k=20&c=65E4slPBw3VWEEPdWRzAbBLbsdVBM2Bg0K1jKtIkXKE="
                                          : "https://us.images.westend61.de/0001837316pw/a-studio-shot-of-pair-of-running-shoes-on-red-background-flat-lay-top-view-HPIF19067.jpg"
                              : primaryIndex == 2
                                  ? index == 0
                                      ? "https://media.istockphoto.com/id/463378191/photo/women-handbag.jpg?s=612x612&w=0&k=20&c=UAqukWsvB7X5NlFoRIwwRhmQ1Y9rSzRMrYQj0ImPxh0="
                                      : index == 1
                                          ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNjVgAPyjvS_OXcndNV1HB2bn_2eMFvaUw1Q&s"
                                          : index == 2
                                              ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj86XPxvuLjNvXsCLceyRuLL3l47nKtcgzej1JPvaY--IIIIp-SzHWQbE04892EV382hs&usqp=CAU"
                                              : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5qMkhyTnc1xrg6kmHDftjXCSWFJFJxQl34L-MCCtsu-y6ezKU1E6j0eTUUOPuClozwA0&usqp=CAU"
                                  : index == 0
                                      ? "https://plus.unsplash.com/premium_photo-1681276170423-2c60b95094b4?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8amV3ZWxsZXJ5JTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D"
                                      : index == 1
                                          ? "https://static-cdn5-2.vigbo.tech/u3760/21552/blog/4963071/4125837/52980196/500-leonovaolga-saltstudio-eb1083d4c6a08a59268c58280bc2c8b2.jpg"
                                          : index == 2
                                              ? "https://t4.ftcdn.net/jpg/02/03/29/87/360_F_203298773_sIIrPnXZSFgafhA6qjjfSvbDhgQjx6mf.jpg"
                                              : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBb5e9kCpNHc_C9vidretJ5QKM-0fHlnSOTw&s",
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CustomText(
                          text: "Order #92287157",
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                        Spacer(),
                        CustomContainer(
                          padding: EdgeInsets.zero,
                          height: 35,
                          width: 80,
                          color: themelightgreycolor,
                          child: Center(
                              child: CustomText(
                            text: "3 items",
                            color: themeblackcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                        ),
                      ],
                    ),
                    const CustomText(
                      text: "Standard Delivery",
                      fontSize: 20,
                      color: themebluegreycolor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: primaryIndex == 0
                              ? "Packed"
                              : primaryIndex == 1
                                  ? "Shipped"
                                  : "Delivered",
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        primaryIndex == 0 || primaryIndex == 1
                            ? const SizedBox()
                            : const Icon(
                                Icons.check_circle,
                                color: themebuttoncolor,
                                size: 30,
                              ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            if (primaryIndex == 0 || primaryIndex == 1) {
                              Go.named(context, RouteName.toTrackOrderScreen);
                            } else {
                              toRecieveBottomSheet();
                            }
                          },
                          child: CustomContainer(
                            padding: EdgeInsets.zero,
                            height: 45,
                            width: 100,
                            color: primaryIndex == 0 || primaryIndex == 1
                                ? themebuttoncolor
                                : themewhitecolor,
                            borderColor: themebuttoncolor,
                            borderWidth: 1,
                            borderRadius: BorderRadius.circular(15),
                            child: Center(
                                child: CustomText(
                              text: primaryIndex == 0 || primaryIndex == 1
                                  ? "Track"
                                  : "Recieve",
                              color: primaryIndex == 0 || primaryIndex == 1
                                  ? themewhitecolor
                                  : themebuttoncolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  toRecieveBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CustomContainer(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  const CustomContainer(
                    height: 100,
                    width: double.infinity,
                    color: themebackgroundcolor,
                    child: Center(
                      child: CustomText(
                        text: "Which item you want to review?",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: List.generate(
                          2,
                          (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomContainer(
                                      height: 140,
                                      width: 160,
                                      padding: EdgeInsets.all(5.0),
                                      color: themewhitecolor,
                                      boxShadow: BoxShadow(
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                          offset: const Offset(2, 2),
                                          color:
                                              themeblackcolor.withOpacity(0.2)),
                                      borderRadius: BorderRadius.circular(15),
                                      child: Center(
                                        child: CustomContainer(
                                          padding: EdgeInsets.zero,
                                          color: themegreytextcolor,
                                          networkImageUrl: index == 0
                                              ? "https://media.istockphoto.com/id/1212973182/photo/close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model.jpg?s=612x612&w=0&k=20&c=_30ouEHJQkhNAaM4C7MXDke_YDMQUF_hrkGGv8w8If4="
                                              : index == 1
                                                  ? "https://img.freepik.com/premium-photo/close-up-attractive-brunette-girl-smiling-happy-standing-white_1258-19158.jpg"
                                                  : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqBoCxsNnttKEBSpzs8eouDHZ6pZvhDUCkWgGGL5aXa9peM5sMGz2Pu-S3rT14W1npVf0&usqp=CAU",
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: CustomContainer(
                                                      padding: EdgeInsets.zero,
                                                      height: 40,
                                                      width: 120,
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
                                                  )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
