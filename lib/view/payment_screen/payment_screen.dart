import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/dotted_line_(my_separater).dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import '../../theme/colors.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int status = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Payments",
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                    CustomContainer(
                      height: 110,
                      width: double.infinity,
                      color: themelightgreycolor,
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "Contact Information",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "+84932000000",
                                    fontSize: 16,
                                  ),
                                  CustomText(
                                    text: "amandamorgan@example.com",
                                    fontSize: 16,
                                  ),
                                ],
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
                    Row(
                      children: [
                        const CustomText(
                          text: "Items",
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          backgroundColor: themebackgroundcolor,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CustomText(
                              text: "2",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Spacer(),
                        CustomContainer(
                          padding: EdgeInsets.zero,
                          height: 45,
                          width: 180,
                          borderRadius: BorderRadius.circular(18),
                          borderColor: themebuttoncolor,
                          borderWidth: 2,
                          child: Center(
                              child: GestureDetector(
                            onTap: () {
                              voucherModelSheet(context);
                            },
                            child: const CustomText(
                              text: "Add Voucher",
                              color: themebuttoncolor,
                              fontSize: 20,
                            ),
                          )),
                        ),
                      ],
                    ),
                    items(),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomText(
                      text: "Shipping Options",
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                    const SizedBox(
                      height: 10,
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
                                      width:
                                          25, // Size of the circular checkbox
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: status == index
                                            ? themebuttoncolor
                                            : themelightgreycolor, // Checked color
                                        shape:
                                            BoxShape.circle, // Circular shape
                                        border: Border.all(
                                            color: themewhitecolor,
                                            width:
                                                2), // Border color and thickness
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
                                      text:
                                          index == 0 ? "5-7 days" : "1-2 days",
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
                      height: 10,
                    ),
                    const Row(
                      children: [
                        CustomText(
                          text: "Payment Method",
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: themebuttoncolor,
                          child: Icon(
                            Icons.edit,
                            color: themewhitecolor,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomContainer(
                      padding: EdgeInsets.zero,
                      height: 35,
                      width: 100,
                      color: themebackgroundcolor,
                      child: Center(
                        child: CustomText(
                          text: "Card",
                          fontSize: 20,
                          color: themebuttoncolor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomContainer(
              padding: EdgeInsets.zero,
              height: 100,
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
                            paymentModelSheet(context, size);

                            // Go.named(context, RouteName.paymentScreen);
                          },
                          child: CustomContainer(
                            height: 50,
                            width: 160,
                            color: themeblackcolor,
                            borderRadius: BorderRadius.circular(15),
                            child: const Center(
                              child: CustomText(
                                text: "Pay",
                                fontSize: 22,
                                color: themegreytextcolor,
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

void showPaymentDailog(BuildContext context, size) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: size.height / 100 * 16,
              width: size.width / 100 * 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Payment is in progress",
                      style: TextStyle(
                        color: themeblackcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please, wait a few moments",
                      style: TextStyle(
                        color: themeblackcolor,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                  child: const CircleAvatar(
                      backgroundColor: themewhitecolor,
                      radius: 25,
                      child: CircularProgressIndicator(
                        color: themebuttoncolor,
                        backgroundColor: themebackgroundcolor,
                      )),
                )),
          ],
        ),
      );
    },
  );

  // // Dialog ko 2 seconds baad band karna
  // Future.delayed(const Duration(seconds: 2), () {
  //   Navigator.of(context).pop(); // Dialog close karna
  // });
}

voucherModelSheet(context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomContainer(
              height: 500,
              padding: EdgeInsets.zero,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Active Vouchers",
                      color: themeblackcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
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
                                          left: 20,
                                          top: 8,
                                          right: 8,
                                          bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          left: 20,
                                          top: 40,
                                          right: 8,
                                          bottom: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                index == 0
                                                    ? Icons.shopping_bag_rounded
                                                    : Icons
                                                        .wallet_giftcard_outlined,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomText(
                                                text: index == 0
                                                    ? "5% off for your next order"
                                                    : "15% off your next purchase",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                              ),
                                              CustomContainer(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                width: 100,
                                                color: themebuttoncolor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Center(
                                                  child: CustomText(
                                                    text: "Apply",
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
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

Future<void> paymentModelSheet(context, size) {
  return showModalBottomSheet(
    isDismissible: true,
    // isScrollControlled: true,
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CustomText(
                    text: "Payment Method",
                    color: themeblackcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showPaymentDailog(context, size);
                          },
                          child: CustomContainer(
                            borderRadius: BorderRadius.circular(15),
                            height: 200,
                            width: 60,
                            color: themebuttoncolor,
                            child: InkWell(
                              onTap: () {
                                Go.pop(context);
                                showPaymentDailog(context, size);
                              },
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: themewhitecolor,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(
                              3,
                              (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: CustomContainer(
                                      borderRadius: BorderRadius.circular(15),
                                      height: 200,
                                      width: 350,
                                      networkImageUrl:
                                          "https://taf.co.id/media/1a87ffc3221a32c98b03a69d8eff505e",
                                    ),
                                  )),
                        ),
                      ],
                    ),
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

items() {
  return ListView.builder(
    shrinkWrap: true,
    primary: false,
    itemCount: 2,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                CustomContainer(
                  padding: EdgeInsets.zero,
                  height: 80,
                  width: 80,
                  shape: BoxShape.circle,
                  boxShadow: BoxShadow(
                      offset: const Offset(2, 3),
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: themeblackcolor.withOpacity(0.3)),
                  color: themewhitecolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(
                        height: 70,
                        width: 70,
                        shape: BoxShape.circle,
                        networkImageUrl: index == 0
                            ? "https://thumbs.dreamstime.com/b/stylish-african-woman-posing-standing-shopping-bags-studio-concept-american-colorful-shopper-over-pink-background-full-194386730.jpg"
                            : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMo5YJze81YXjjX--3oDIDWPMY3L4uPeHZaA&s",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                  width: 180,
                  child: CustomText(
                    text: "Lorem ipsum dolor sit amet consectetur.",
                    fontSize: 17,
                    color: themeblackcolor,
                  ),
                ),
                const Spacer(),
                const CustomText(
                  text: "\$17,00",
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: themeblackcolor,
                )
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 10,
            child: CustomContainer(
              padding: EdgeInsets.zero,
              height: 30,
              width: 30,
              shape: BoxShape.circle,
              boxShadow: BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  offset: const Offset(1, 3),
                  color: themeblackcolor.withOpacity(0.1)),
              color: themewhitecolor,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: themebackgroundcolor,
                    child: CustomText(
                      text: "1",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    },
  );
}
