// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce/models/wishlist_model.dart';
import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/view/profile_screen/profile_screen.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../widget/custom_text_widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: themewhitecolor,
        automaticallyImplyLeading: false,
        title: const CustomText(
          text: "WishList",
          fontWeight: FontWeight.w700,
          fontSize: 34,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CustomText(
                        text: "Recently Viewed",
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Go.named(context, RouteName.recentllyViewedScreen);
                        },
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
                  recentlyViewedWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  wishList_model.isEmpty
                      ?
                       SizedBox(
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomContainer(
                                height: 150,
                                width: 150,
                                shape: BoxShape.circle,
                                color: themewhitecolor,
                                boxShadow: BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  color: themeblackcolor.withOpacity(0.3),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 60,
                                    color: themebuttoncolor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const wishList_View(),
                  const SizedBox(
                    height: 10,
                  ),
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
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class wishList_View extends StatefulWidget {
  const wishList_View({super.key});

  @override
  State<wishList_View> createState() => _wishList_ViewState();
}

class _wishList_ViewState extends State<wishList_View> {
  void deleteItem(int index) {
    setState(() {
      wishList_model.removeAt(index); // Remove item from the list
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
      // padding: EdgeInsets.only(top: 10,bottom: 10),
      itemCount: wishList_model.length - 1,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
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
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomContainer(
                    padding: EdgeInsets.zero,
                    width: 165,
                    color: themegreytextcolor,
                    networkImageUrl: wishList_model[index].img,
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  deleteItem(index);
                                },
                                child: const CircleAvatar(
                                  backgroundColor: themewhitecolor,
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: themepinkcolor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 220,
                      child: CustomText(
                        text: wishList_model[index].title,
                        // fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    index == 1
                        ? Row(
                            children: [
                              CustomText(
                                text: wishList_model[index].price,
                                color: themebackgroundPinkcolor,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: themebackgroundPinkcolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                text: wishList_model[index].price,
                                color: themeblackcolor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        : CustomText(
                            text: wishList_model[index].price,
                            color: themeblackcolor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                              2,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(right: 6),
                                    child: CustomContainer(
                                      padding: EdgeInsets.zero,
                                      height: 28,
                                      width: 55,
                                      color: themebackgroundcolor,
                                      borderRadius: BorderRadius.circular(5),
                                      child: Center(
                                        child: CustomText(
                                          text: index == 0
                                              ? wishList_model[index].colorName
                                              : wishList_model[index].size,
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        // const Spacer(),
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: themebuttoncolor,
                          size: 35,
                        ),
                      ],
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
}
