// ignore_for_file: unused_field, prefer_final_fields

import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/container_button.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class HelloCardScreen extends StatefulWidget {
  const HelloCardScreen({super.key});

  @override
  State<HelloCardScreen> createState() => _HelloCardScreenState();
}

class _HelloCardScreenState extends State<HelloCardScreen> {
  PageController _pageController = PageController();
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              children: const [
                OnBoardPage(
                    img: "assets/images/png/card.png",
                    title: "Hellow",
                    label:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus."),
                Onboard2(),
                OnBoardPage(
                    img: "assets/images/png/card2.png",
                    title: "Ready?",
                    label:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                Onboard2(),
              ],
            ),
            Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(),
                )),
          ],
        ),
      ),
    );
  }

  Widget _activeIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 20,
      width: isActive ? 20 : 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: themebuttoncolor,
      ),
    );
  }

  Widget _inactiveIndicator(bool inActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 20,
      width: inActive ? 20 : 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: themebackgroundcolor),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> Indicators = [];
    for (int i = 0; i < 4; i++) {
      if (pageIndex == i) {
        Indicators.add(_activeIndicator(true));
      } else {
        Indicators.add(_inactiveIndicator(false));
      }
    }
    return Indicators;
  }
}

class OnBoardPage extends StatefulWidget {
  final String img;
  final String title;
  final String label;
  const OnBoardPage(
      {super.key, required this.img, required this.title, required this.label});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png/Untitled.png"),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            top: 100,
            bottom: 100,
            right: 30,
            left: 30,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: themewhitecolor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: const Offset(5, 0),
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.img),
                                  fit: BoxFit.cover),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 40.0, left: 40, top: 40),
                          child: Column(
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                    color: themeblackcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.label,
                                style: const TextStyle(
                                    color: themeblackcolor, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class Onboard2 extends StatefulWidget {
  const Onboard2({super.key});

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png/Untitled.png"),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            top: 100,
            bottom: 100,
            right: 30,
            left: 30,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: themewhitecolor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: const Offset(3, 0),
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/png/card2.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 40.0, left: 40, top: 40),
                          child: Column(
                            children: [
                              const Text(
                                "Ready?",
                                style: TextStyle(
                                    color: themeblackcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(
                                    color: themeblackcolor, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ContainerButton(
                                height: 50,
                                width: 200,
                                onTap: () {
                                  Go.named(context, RouteName.navabrScreen);
                                },
                                text: "Let's Start",
                                colors: themebuttoncolor,
                                textcolor: themewhitecolor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
