import 'package:e_commerce/Provider/change_state.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../../router_structure/go.routes.dart';
import '../../../router_structure/navigator.dart';
import '../../../theme/colors.dart';
import '../../../widget/dotted_line_(my_separater).dart';

class VoucherScreen extends StatefulWidget {
  final String profileImg;
  const VoucherScreen({super.key, required this.profileImg});

  @override
  State<VoucherScreen> createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
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
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Go.named(context, RouteName.myActivityScreen);
                    },
                    child: const CustomText(
                      text: "Vouchers",
                      fontWeight: FontWeight.bold,
                      color: themeblackcolor,
                      fontSize: 25,
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
                                    Go.named(context, RouteName.voucherScreen);
                                  } else if (index == 1) {
                                    Go.named(context, RouteName.chatScreen);
                                  } else if (index == 2) {
                                    Go.named(context, RouteName.settingsScreen);
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: index == 0
                                      ? themebuttoncolor
                                      : themebackgroundcolor,
                                  child: Icon(
                                    index == 0
                                        ? Icons.document_scanner_outlined
                                        : index == 1
                                            ? Icons.chat_outlined
                                            : Icons.settings_outlined,
                                    color: index == 0
                                        ? themewhitecolor
                                        : themebuttoncolor,
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
              Consumer<ChangeStateVariables>(
                builder: (context, newValue, child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          2,
                          (index) => Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              onTap: () {
                                newValue.stateChangeInt(index);
                              },
                              child: CustomContainer(
                                width: size.width*42/100,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                borderRadius: BorderRadius.circular(20),
                                color: newValue.selectIndex == index
                                    ? themebackgroundcolor
                                    : themelightgreycolor,
                                child: Center(
                                  child: CustomText(
                                    text: index == 0
                                        ? "Active Rewards"
                                        : "Progress",
                                    color: newValue.selectIndex == index
                                        ? themebuttoncolor
                                        : themeblackcolor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      newValue.selectIndex == 0
                          ? activeReward()
                          : progressWidget(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }

  activeReward() {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: TicketWidget(
            padding: EdgeInsets.zero,
            isCornerRounded: true,
            color: themebuttoncolor,
            width: double.infinity,
            height: 170,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: TicketWidget(
                padding: EdgeInsets.zero,
                isCornerRounded: true,
                color: themewhitecolor,
                width: double.infinity,
                height: 175,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 8, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: "Vouchers",
                            color: themebuttoncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                          CustomContainer(
                            padding: const EdgeInsets.all(5),
                            width: 140,
                            color: themebackgroundPinkcolor,
                            borderRadius: BorderRadius.circular(5),
                            child: Center(
                              child: CustomText(
                                text: index == 0
                                    ? "Valid Until 5.16.20"
                                    : "Valid Until 6.20.20",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const MySeparator(
                      color: themebuttoncolor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 40, right: 8, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                index == 0
                                    ? Icons.shopping_bag_rounded
                                    : Icons.wallet_giftcard_outlined,
                                color: themebuttoncolor,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                text: index == 0
                                    ? "First Purchase"
                                    : "Gift From Customer Care",
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: index == 0
                                    ? "5% off for your next order"
                                    : "15% off your next purchase",
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                              const CustomContainer(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                color: themebuttoncolor,
                                child: Center(
                                  child: CustomText(
                                    text: "Collected",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: themewhitecolor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  progressWidget() {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 260,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                CustomContainer(
                    height: 110,
                    width: 110,
                    shape: BoxShape.circle,
                    boxShadow: BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 3,
                        color: themeblackcolor.withOpacity(0.1)),
                    child: CustomContainer(
                      shape: BoxShape.circle,
                      borderColor: themebuttoncolor,
                      borderWidth: 2,
                      boxShadow: BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: themeblackcolor.withOpacity(0.1)),
                      child: Center(
                        child: Icon(
                          index == 0
                              ? Icons.shopping_bag
                              : index == 1
                                  ? Icons.favorite
                                  : index == 2
                                      ? Icons.star
                                      : index == 3
                                          ? Icons.cloud
                                          : index == 4
                                              ? Icons.person
                                              : Icons.emoji_emotions,
                          color: themebuttoncolor,
                          size: 45,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: index == 0
                      ? "First Purchase"
                      : index == 1
                          ? "Loyal Customer"
                          : index == 2
                              ? "Review Maker"
                              : index == 3
                                  ? "Big Soul"
                                  : index == 4
                                      ? "T-Shirt Collector"
                                      : "10+ Orders",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            index == 0
                ? Positioned(
                    left: 120,
                    top: 25,
                    child: CustomContainer(
                      padding: EdgeInsets.zero,
                      height: 40,
                      width: 40,
                      shape: BoxShape.circle,
                      boxShadow: BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: themeblackcolor.withOpacity(0.1)),
                      child: const Center(
                        child: Icon(
                          Icons.check_circle,
                          size: 40,
                          color: themebuttoncolor,
                        ),
                      ),
                    ))
                : const SizedBox()
          ],
        );
      },
    );
  }
}
