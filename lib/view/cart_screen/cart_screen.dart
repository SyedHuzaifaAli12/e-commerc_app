import 'package:e_commerce/Provider/change_state.dart';
import 'package:e_commerce/models/addwishlist_model.dart';
import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/colors.dart';
import '../wish_list_screen/wish_list.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: themewhitecolor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const CustomText(
              text: "Cart",
              fontWeight: FontWeight.w700,
              fontSize: 34,
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: themebackgroundcolor,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CustomText(
                  text: "${addWishList_model.length}",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomContainer(
                        height: 110,
                        width: double.infinity,
                        color: themelightgreycolor,
                        borderRadius: BorderRadius.circular(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Shipping Address",
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
                                        "26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city",
                                    fontSize: 16,
                                  ),
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
                                      Icons.edit,
                                      color: themewhitecolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      addWishList_model.isEmpty
                          ? SizedBox(
                              height: 300,
                              child: Center(
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
                                      child: Center(
                                          child: Image.asset(
                                              "assets/images/png/logo.png")),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const AddWishList(),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomText(
                        text: "From Your WishList",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      const wishList_View(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomContainer(
              padding: EdgeInsets.zero,
              height: 150,
              width: double.infinity,
              color: themelightgreycolor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomText(
                          text: "Total",
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: themeblackcolor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CustomText(
                          text: "\$34,00",
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: themeblackcolor,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Go.named(context, RouteName.paymentScreen);
                          },
                          child: CustomContainer(
                            height: 50,
                            width: 170,
                            color: themebuttoncolor,
                            borderRadius: BorderRadius.circular(15),
                            child: const Center(
                              child: CustomText(
                                text: "Checkout",
                                fontSize: 22,
                                color: themewhitecolor,
                              ),
                            ),
                          ),
                        )
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
  }
}

class AddWishList extends StatefulWidget {
  const AddWishList({super.key});

  @override
  State<AddWishList> createState() => _AddWishListState();
}

class _AddWishListState extends State<AddWishList> {
  void deleteItem(int index) {
    setState(() {
      addWishList_model.removeAt(index); // Remove item from the list
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.only(top: 10,bottom: 10),
      itemCount: addWishList_model.length - 1,
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
                    networkImageUrl: addWishList_model[index].img,
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
                        text: addWishList_model[index].title,
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
                                text: addWishList_model[index].price,
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
                                text: addWishList_model[index].price,
                                color: themeblackcolor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        : Row(
                            children: List.generate(
                                2,
                                (index) => Padding(
                                      padding: const EdgeInsets.only(right: 6),
                                      child: CustomText(
                                        text: index == 0
                                            ? addWishList_model[index].colorName
                                            : addWishList_model[index].size,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: addWishList_model[index].price,
                          color: themeblackcolor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        // const Spacer(),

                        Row(children: [
                          GestureDetector(
                            onTap: () {
                              Provider.of<ChangeStateVariables>(context,
                                      listen: false)
                                  .updateQuantity(false);
                            },
                            child: const Icon(
                              Icons.remove_circle_outline,
                              size: 35,
                              color: themebuttoncolor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomContainer(
                            padding: EdgeInsets.zero,
                            height: 35,
                            width: 40,
                            color: themebackgroundcolor,
                            child: Center(child: Consumer<ChangeStateVariables>(
                              builder: (context, newValue, child) {
                                return CustomText(
                                  text: newValue.itemNumber.toString(),
                                  color: themeblackcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                );
                              },
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Provider.of<ChangeStateVariables>(context,
                                      listen: false)
                                  .updateQuantity(true);
                            },
                            child: const Icon(
                              Icons.add_circle_outline,
                              size: 35,
                              color: themebuttoncolor,
                            ),
                          ),
                        ])
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
