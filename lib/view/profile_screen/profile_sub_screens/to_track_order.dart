import 'package:e_commerce/widget/custom_container.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';

class ToTrackOrderScreen extends StatefulWidget {
  const ToTrackOrderScreen({super.key});

  @override
  State<ToTrackOrderScreen> createState() => _ToTrackOrderScreenState();
}

class _ToTrackOrderScreenState extends State<ToTrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
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
                        text: "Track Your Order",
                        color: themeblackcolor,
                        fontSize: 16,
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: themelightgreycolor,
                                child: Icon(
                                  index == 0
                                      ? Icons.document_scanner_outlined
                                      : index == 1
                                          ? Icons.list
                                          : Icons.settings_outlined,
                                  color: themebuttoncolor,
                                  size: 30,
                                ),
                              ),
                            )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
                const CustomContainer(
                width: double.infinity,
                color: themelightgreycolor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Tracking Number",
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: themeblackcolor,
                        ),
                        Icon(
                          Icons.library_books_outlined,
                          color: themebuttoncolor,
                          size: 35,
                        )
                      ],
                    ),
                    CustomText(
                      text: "LGS-i92927839300763731",
                      fontSize: 18,
                      color: themeblackcolor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 320,
                            child: CustomText(
                              text: index == 0
                                  ? "Packed"
                                  : index == 1
                                      ? "On the Way to Logistic Facility"
                                      : index == 2
                                          ? "Arrived at Logistic Facility"
                                          : index == 3
                                              ? "Shipped"
                                              : index == 4
                                                  ? "Out for Delivery"
                                                  : "Attempt to deliver your parcel was not successful →",
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: index == 5
                                  ? themebuttoncolor
                                  : themeblackcolor,
                            ),
                          ),
                          CustomContainer(
                            padding: const EdgeInsets.all(5.0),
                            color: index == 5
                                ? themeredcolor
                                : themelightgreycolor,
                            borderRadius: BorderRadius.circular(5.0),
                            child: Center(
                              child: CustomText(
                                text: index == 0
                                    ? "April,19 12:31"
                                    : index == 1
                                        ? "April,19 19:07"
                                        : index == 2
                                            ? "April,19 19:07"
                                            : index == 3
                                                ? "April,20 06:15"
                                                : "April,20 06:15",
                                color: index == 5
                                    ? themewhitecolor
                                    : themeblackcolor,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomText(
                        text: index == 0
                            ? "Your parcel is packed and will be handed over to our delivery partner."
                            : index == 5
                                ? ""
                                : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.",
                        fontSize: 16,
                        color: themeblackcolor,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
