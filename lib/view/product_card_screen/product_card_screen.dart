// ignore_for_file: override_on_non_overriding_member

import 'package:e_commerce/widget/carousel_slider_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/change_state.dart';
import '../../theme/colors.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text_widget.dart';
import '../home_screen/home_screen.dart';

class ProductCardScreen extends StatefulWidget {
  final String networkImageUrl;
  final String price;
  const ProductCardScreen(
      {super.key, required this.networkImageUrl, required this.price});

  @override
  State<ProductCardScreen> createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  @override
  int status = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer<ChangeStateVariables>(
              builder: (context, value, child) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      value.expandedText();
                    },
                    child: Icon(
                      value.expandText
                          ? Icons.favorite_outline_sharp
                          : Icons.favorite,
                      color: value.expandText ? themeblackcolor : themeredcolor,
                      size: 30,
                    ),
                  ),
                );
              },
            ),
            Row(
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomContainer(
                          padding: EdgeInsets.zero,
                          color:
                              index == 0 ? themeblackcolor : themebuttoncolor,
                          height: 50,
                          width: 170,
                          child: Center(
                            child: CustomText(
                              text: index == 0 ? "Add To Cart" : "Buy Now",
                              color: themewhitecolor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverLayoutBuilder(
              builder: (context, constraints) {
                return SliverAppBar(
                  expandedHeight: 450.0,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: carouselSliderProduct(
                      img: [
                        widget.networkImageUrl,
                        widget.networkImageUrl,
                        widget.networkImageUrl,
                      ],
                      autoPlay: true,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      height: 440,
                    ),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topCard(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 15),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomText(
                      text: "You Might Like",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: justForYou(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topCard() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: CustomContainer(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
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
              ),
              const SizedBox(
                width: 20,
              ),
              const CircleAvatar(
                radius: 18,
                backgroundColor: themebackgroundPinkcolor,
                child: Icon(
                  Icons.arrow_outward_rounded,
                  color: themegreycolor,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            maxLines: 3,
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
            fontSize: 18,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const CustomText(
                text: "Variations",
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CustomContainer(
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(5),
                            width: 60,
                            height: 30,
                            color: themegreybackgroundcolor,
                            child: Center(
                              child:
                                  CustomText(text: index == 0 ? "Pink" : "M"),
                            ),
                          ),
                        )),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_circle_right_rounded,
                size: 50,
                color: themebuttoncolor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomContainer(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.zero,
                        networkImageUrl: index == 0
                            ? "https://www.shutterstock.com/image-photo/shapely-barefooted-lady-tanned-skin-600nw-1146059306.jpg"
                            : index == 1
                                ? "https://st2.depositphotos.com/5228995/43258/i/450/depositphotos_432588828-stock-photo-playful-little-girl-in-trendy.jpg"
                                : "https://st3.depositphotos.com/5228995/14197/i/450/depositphotos_141977778-stock-photo-little-girl-wearing-stylish-clothes.jpg",
                      ),
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Specifications",
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Material",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(
                2,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomContainer(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        borderRadius: BorderRadius.circular(5),
                        // width: 60,
                        height: 35,
                        color: themebackgroundPinkcolor,
                        child: Center(
                          child: CustomText(
                            text: index == 0 ? "Cotton 95%" : "Nylon 5%",
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Origin",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomContainer(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            borderRadius: BorderRadius.circular(5),
            width: 60,
            height: 35,
            color: themebackgroundcolor,
            child: const Center(
              child: CustomText(
                text: "EU",
                fontSize: 18,
              ),
            ),
          ),
          const Row(
            children: [
              CustomText(
                text: "Size guide",
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              Spacer(),
              Icon(
                Icons.arrow_circle_right,
                color: themebuttoncolor,
                size: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Delivery",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          Column(
            children: List.generate(
              2,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: CustomContainer(
                  height: 50,
                  width: double.infinity,
                  color: status == index
                      ? themebackgroundcolor
                      : themelightgreycolor,
                  borderRadius: BorderRadius.circular(12),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            status = index;
                          });
                        },
                        child: CustomContainer(
                          padding: EdgeInsets.zero,
                          height: 30,
                          width: 30,
                          shape: BoxShape.circle,
                          color: themewhitecolor,
                          child: Container(
                            width: 25, // Size of the circular checkbox
                            height: 25,
                            decoration: BoxDecoration(
                              color: status == index
                                  ? themebuttoncolor
                                  : themelightgreycolor, // Checked color
                              shape: BoxShape.circle, // Circular shape
                              border: Border.all(
                                  color: themewhitecolor,
                                  width: 2), // Border color and thickness
                            ),
                            child: status == index
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ) // Tick mark when checked
                                : null, // No icon when unchecked
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: index == 0 ? "Standard" : "Express",
                        color: themeblackcolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomContainer(
                        padding: EdgeInsets.zero,
                        height: 30,
                        width: 90,
                        color: themelightgreycolor,
                        borderRadius: BorderRadius.circular(5),
                        child: Center(
                          child: CustomText(
                            text: index == 0 ? "5-7 days" : "1-2 days",
                            color: themebuttoncolor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      CustomText(
                        text: index == 0 ? "FREE" : "\$12,00",
                        color: themeblackcolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Rating & Reviews",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: List.generate(
                    5,
                    (index) => Icon(
                          index == 4 ? Icons.star_border_outlined : Icons.star,
                          color: themeambercolor,
                          size: 28,
                        )),
              ),
              const SizedBox(
                width: 10,
              ),
              const CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: 60,
                height: 35,
                color: themebackgroundcolor,
                child: Center(
                  child: CustomText(
                    text: "4/5",
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Veronika",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  Row(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              index == 4
                                  ? Icons.star_border_outlined
                                  : Icons.star,
                              color: themeambercolor,
                              size: 25,
                            )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 300,
                    child: CustomText(
                      maxLines: 3,
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomContainer(
            height: 50,
            width: double.infinity,
            color: themebuttoncolor,
            padding: EdgeInsets.zero,
            child: Center(
                child: CustomText(
              text: "View All Reviews",
              color: themewhitecolor,
              fontSize: 22,
            )),
          )
        ],
      ),
    );
  }
}
