import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/theme/colors.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Go.named(context, RouteName.myActivityScreen);
                          },
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: themebuttoncolor),
                            child: const Center(
                              child: Text(
                                "My Activity",
                                style: TextStyle(
                                    color: themewhitecolor, fontSize: 22),
                              ),
                            ),
                          ),
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
                    const CustomText(
                      text: "Hello, Romania!",
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomContainer(
                      height: 130,
                      width: double.infinity,
                      color: themelightgreycolor,
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "Announcement",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: CustomText(
                                  text:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit luctus libero ac vulputate.",
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: themebuttoncolor,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: themewhitecolor,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomText(
                      text: "Recently viewed",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    recentlyViewedWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomText(
                      text: "My Orders",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          3,
                          (index) => GestureDetector(
                                onTap: () {
                                  if (index == 1) {
                                    Go.named(
                                        context, RouteName.toRecieveScreen);
                                  }
                                },
                                child: CustomContainer(
                                    height: 50,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    color: themebackgroundcolor,
                                    borderRadius: BorderRadius.circular(25),
                                    child: Center(
                                      child: CustomText(
                                        text: index == 0
                                            ? "To Play"
                                            : index == 1
                                                ? "To Recieve"
                                                : "To Review",
                                        fontSize: 22,
                                        color: themebuttoncolor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomText(
                      text: "Stories",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ],
                ),
              ),
              storiesWidget(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const CustomText(
                      text: "NewItems",
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
              ),
              newItems(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
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
              ),
              mostPopular(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomText(
                          text: "Categories",
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
                    const SizedBox(
                      height: 20,
                    ),
                    categoryProfile(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const CustomText(
                          text: "Flash Sale",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.timer_outlined,
                          color: themebuttoncolor,
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
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                height: 35,
                                color: themebackgroundPinkcolor,
                                borderRadius: BorderRadius.circular(12),
                                child: Center(
                                  child: CustomText(
                                    text: index == 0
                                        ? "00"
                                        : index == 1
                                            ? "36"
                                            : "58",
                                    color: themedarkbluecolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    falshSale(),
                    const CustomText(
                      text: "Top Product",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    recentlyViewedWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        CustomText(
                          text: "Just For You",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 5),
                          child: Icon(
                            Icons.star,
                            color: themebuttoncolor,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    justForYou(),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

recentlyViewedWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(
      5,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: themewhitecolor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(2, 2),
                    color: themeblackcolor.withOpacity(0.2)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(index == 0
                    ? "https://photosbulk.com/wp-content/uploads/instagram-profile-picture-for-girls-attitude_58.webp"
                    : index == 1
                        ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTOIiEXB1uOFlAQAp2JSlv7zCR4R29QFIg3w&s"
                        : index == 2
                            ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtdWSD2WGHGLv6xLoMZWu0zbRB_1e3YPXtxg&s"
                            : index == 3
                                ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwVk9Une1oVHEIs_U9EPx4F4vSaVKy_rPVGuhZnhSqABAJoogoN2tL5Fz23qwe70eiNV0&usqp=CAU"
                                : index == 4
                                    ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvbDE5eMUalcrzUH9vaSkIB7A4zgdYDvjzKIg7D4vp5aNpzy-wudo6Lgh0LYJMpNhfPV4&usqp=CAU"
                                    : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ_PGYE3Q1T_L0fNPHZom2pl6MQbB-1NgxSmUJwTRgci9UhK6cP6sN5r_uUvXrftZId6k&usqp=CAU"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

storiesWidget() {
  return SizedBox(
    height: 280,
    child: ListView.builder(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomContainer(
            borderRadius: BorderRadius.circular(15),
            width: 160,
            // color: themebuttoncolor,
            boxShadow: BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(5, 0),
                color: themeblackcolor.withOpacity(0.3)),
            networkImageUrl: index == 0
                ? "https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8="
                : index == 1
                    ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                    : index == 2
                        ? "https://media.istockphoto.com/id/997665692/photo/young-girl-on-pink-background.jpg?s=612x612&w=0&k=20&c=Ksq5uqAqu2uWJZv93w_sRDi2yicB6EQhMIRtbu4ZEdQ="
                        : index == 3
                            ? "https://img.freepik.com/free-photo/studio-shot-pretty-black-woman-with-white-shopping-bag-standing-yellow-background-trendy-spring-fashionable-look_273443-10.jpg"
                            : "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg",
            child: const Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(50, 255, 255, 255),
                    child: Icon(
                      Icons.play_arrow,
                      color: themewhitecolor,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}

newItems() {
  return SizedBox(
    height: 300,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: 5,
      shrinkWrap: true,
      primary: false,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomContainer(
                padding: EdgeInsets.zero,
                height: 180,
                width: 180,
                color: themewhitecolor,
                boxShadow: BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(2, 2),
                    color: themeblackcolor.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                      height: 165,
                      width: 165,
                      color: themegreytextcolor,
                      networkImageUrl: index == 0
                          ? "https://media.istockphoto.com/id/1212973182/photo/close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model.jpg?s=612x612&w=0&k=20&c=_30ouEHJQkhNAaM4C7MXDke_YDMQUF_hrkGGv8w8If4="
                          : index == 1
                              ? "https://img.freepik.com/premium-photo/close-up-attractive-brunette-girl-smiling-happy-standing-white_1258-19158.jpg"
                              : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqBoCxsNnttKEBSpzs8eouDHZ6pZvhDUCkWgGGL5aXa9peM5sMGz2Pu-S3rT14W1npVf0&usqp=CAU",
                      borderRadius: BorderRadius.circular(12),
                      child: Column(),
                    ),
                  ],
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
                    CustomText(
                      text: index == 0
                          ? "\$17,00"
                          : index == 1
                              ? "\$32,00"
                              : "\$21,00",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}

mostPopular() {
  return SizedBox(
    height: 230,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: 5,
      shrinkWrap: true,
      primary: false,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomContainer(
                padding: EdgeInsets.zero,
                height: 200,
                width: 150,
                color: themewhitecolor,
                boxShadow: BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(2, 2),
                    color: themeblackcolor.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomContainer(
                        height: 150,
                        width: double.infinity,
                        color: themegreytextcolor,
                        networkImageUrl: index == 0
                            ? "https://media.istockphoto.com/id/1212973182/photo/close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model.jpg?s=612x612&w=0&k=20&c=_30ouEHJQkhNAaM4C7MXDke_YDMQUF_hrkGGv8w8If4="
                            : index == 1
                                ? "https://img.freepik.com/premium-photo/close-up-attractive-brunette-girl-smiling-happy-standing-white_1258-19158.jpg"
                                : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqBoCxsNnttKEBSpzs8eouDHZ6pZvhDUCkWgGGL5aXa9peM5sMGz2Pu-S3rT14W1npVf0&usqp=CAU",
                        borderRadius: BorderRadius.circular(12),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const CustomText(
                            text: "1780",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.favorite,
                            color: themebuttoncolor,
                            size: 18,
                          ),
                          const Spacer(),
                          CustomText(
                            text: index == 0
                                ? "Now"
                                : index == 1
                                    ? "Sale"
                                    : "Hot",
                            color: themedarkbluecolor,
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      },
    ),
  );
}

categoryProfile() {
  return GridView.builder(
    // padding: const EdgeInsets.symmetric(horizontal: 20),
    itemCount: 4,
    shrinkWrap: true,
    primary: false,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 250,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    itemBuilder: (context, primaryIndex) {
      return CustomContainer(
        padding: EdgeInsets.zero,
        width: 150,
        color: themewhitecolor,
        boxShadow: BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(2, 2),
            color: themeblackcolor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(
              // height: 220,
              width: double.infinity,
              borderRadius: BorderRadius.circular(12),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 90,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return CustomContainer(
                    width: double.infinity,
                    color: themegreytextcolor,
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
                    borderRadius: BorderRadius.circular(12),
                  );
                },
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  CustomText(
                    text: primaryIndex == 0
                        ? "Clothing"
                        : primaryIndex == 1
                            ? "Shoes"
                            : primaryIndex == 2
                                ? "Bags"
                                : "Jwellery",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  const Spacer(),
                  CustomContainer(
                    padding: EdgeInsets.zero,
                    height: 30,
                    color: themelightgreycolor,
                    borderRadius: BorderRadius.circular(12),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomText(
                          text: primaryIndex == 0
                              ? "10g"
                              : primaryIndex == 1
                                  ? "530"
                                  : primaryIndex == 2
                                      ? "87"
                                      : "218",
                          color: themedarkbluecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

falshSale() {
  return GridView.builder(
    // padding: const EdgeInsets.symmetric(horizontal: 15),
    itemCount: 6,
    shrinkWrap: true,
    primary: false,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisExtent: 170),
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomContainer(
              padding: EdgeInsets.zero,
              height: 150,
              width: 180,
              color: themewhitecolor,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: const Offset(2, 2),
                  color: themeblackcolor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomContainer(
                  padding: EdgeInsets.zero,
                  width: 165,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomContainer(
                            padding: EdgeInsets.zero,
                            height: 25,
                            color: themepinkcolor,
                            borderRadius: BorderRadius.circular(5),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: CustomText(
                                text: "-20%",
                                color: themewhitecolor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

justForYou() {
  return GridView.builder(
    itemCount: 6,
    shrinkWrap: true,
    primary: false,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisExtent: 360, crossAxisSpacing: 10),
    itemBuilder: (context, index) {
      return Column(
        children: [
          CustomContainer(
            padding: const EdgeInsets.all(8),
            height: 240,
            width: double.infinity,
            color: themewhitecolor,
            boxShadow: BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(2, 2),
                color: themeblackcolor.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(12),
            child: CustomContainer(
              color: themegreytextcolor,
              networkImageUrl: index == 0
                  ? "https://img.freepik.com/free-photo/asian-happy-female-woman-girl-holds-colourful-shopping-packages-standing-yellow-background-studio-shot-close-up-portrait-young-beautiful-attractive-girl-smiling-looking-camera-with-bags_609648-2974.jpg"
                  : index == 1
                      ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                      : index == 2
                          ? "https://img.freepik.com/free-photo/young-beautiful-girl-dress-polka-dot-holding-air-tickets-toy-air-plane-smiling-cheerfully-looking-playful-happy-standing-white-background_141793-22329.jpg"
                          : index == 3
                              ? "https://img.freepik.com/free-photo/woman-posing-jumping-while-holding-shopping-bags_23-2148684543.jpg"
                              : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqBoCxsNnttKEBSpzs8eouDHZ6pZvhDUCkWgGGL5aXa9peM5sMGz2Pu-S3rT14W1npVf0&usqp=CAU",
              borderRadius: BorderRadius.circular(10),
              child: Column(),
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
                CustomText(
                  text: index == 0
                      ? "\$17,00"
                      : index == 1
                          ? "\$32,00"
                          : "\$21,00",
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ],
            ),
          )
        ],
      );
    },
  );
}
