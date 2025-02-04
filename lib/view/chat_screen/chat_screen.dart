import 'package:e_commerce/theme/colors.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:e_commerce/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themelightgreycolor,
      appBar: AppBar(
        backgroundColor: themewhitecolor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
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
                            offset: Offset(2, 3),
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
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Maggy Lee",
                      fontSize: 25,
                      color: themebuttoncolor,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Customer Care Service",
                      fontSize: 17,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        // alignment: Alignment.topLeft,
        children: [
          message(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomContainer(
              height: 80,
              color: themebackgroundcolor,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      borderColor: themebuttoncolor,
                      hintText: "Message",
                      hintStyle: const TextStyle(color: themebuttoncolor),
                      isfilled: true,
                      filledColor: themebackgroundcolor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.photo_size_select_actual_outlined,
                    color: themebuttoncolor,
                    size: 60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.list_alt_sharp,
                    color: themebuttoncolor,
                    size: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget message() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: CustomContainer(
              width: 320,
              color: themebackgroundcolor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              child: Center(
                child: CustomText(
                  maxLines: 5,
                  text:
                      "Hello, Amanda! Welcome to Customer Care Service. We will be happy to help you. Please, provide us more details about your issue before we can start.",
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomContainer(
                      color: themebuttoncolor,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: themewhitecolor,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: "Order Issues",
                              color: themewhitecolor,
                              fontSize: 17,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer(
                      color: themebuttoncolor,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: themewhitecolor,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: "I didn't recieve my parcel",
                              fontSize: 17,
                              color: themewhitecolor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 55,
                  width: 55,
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
                        radius: 23,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZBdFqBPjGbRgnPCwJ54ulRrDDgj_C6DLFw&s"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomContainer(
              borderColor: themebuttoncolor,
              borderWidth: 1.5,
              width: 390,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    padding: const EdgeInsets.all(5),
                    color: themewhitecolor,
                    boxShadow: BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: const Offset(1, 2),
                        color: themeblackcolor.withOpacity(0.1)),
                    height: 120,
                    width: 120,
                    child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return CustomContainer(
                            height: 35,
                            color: themebuttoncolor,
                            width: 35,
                            networkImageUrl: index == 0
                                ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpT1hii-1xJmd7Zqi6UUbTUATBDnLhyaZF6g&s"
                                : index == 1
                                    ? "https://thumbs.dreamstime.com/b/portrait-beautiful-young-african-woman-white-dress-over-black-background-studio-picture-adult-afro-american-attractive-155294281.jpg"
                                    : index == 2
                                        ? "https://photos.peopleimages.com/picture/202307/2709617-fashion-portrait-and-asian-woman-in-studio-with-confidence-stye-and-cool-clothing-against-a-white-background.-stylish-pose-and-japanese-female-model-with-trendy-outfit-attitude-and-aesthetic-fit_400_400.jpg"
                                        : "https://st3.depositphotos.com/23039632/36840/i/450/depositphotos_368407326-stock-photo-fashion-look-girl-pants-stripes.jpg");
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Order #92287157",
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            CustomContainer(
                              padding: EdgeInsets.zero,
                              height: 35,
                              width:70,
                              color: themelightgreycolor,
                              child: Center(
                                  child: CustomText(
                                text: "3 items",
                                color: themeblackcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                            ),
                          ],
                        ),
                        CustomText(
                          text: "Standard Delivery",
                          fontSize: 18,
                          color: themebluegreycolor,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: "Shipped",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: CustomContainer(
              width: 320,
              color: themebuttoncolor,
              child: Center(
                child: CustomText(
                  maxLines: 5,
                  text:
                      "Hello, Amanda! I'm Maggy, your personal assistant from Customer Care Service. Let me go through your order and check its current status. Wait a moment please.",
                  fontSize: 17,
                  color: themewhitecolor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomContainer(
                color: themewhitecolor,
                child: Center(
                  child: CustomText(
                    text: "Hello, Maggy! Sure!",
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
