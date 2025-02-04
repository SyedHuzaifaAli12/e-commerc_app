// ignore_for_file: unused_field, annotate_overrides, unused_element, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class carouselSliderProduct extends StatefulWidget {
  final List img;
  final bool autoPlay;
  final double viewportFraction;
  final double height;

  final bool enlargeCenterPage;
  const carouselSliderProduct({
    super.key,
    required this.img,
    this.enlargeCenterPage = false,
    this.autoPlay = false,
    this.viewportFraction = 1.0,
    this.height = 180,
  });

  @override
  State<carouselSliderProduct> createState() => _carouselSliderProductState();
}

class _carouselSliderProductState extends State<carouselSliderProduct> {
  @override
  // ignore: override_on_non_overriding_member
  final CarouselController _controller = CarouselController();
  int selectIndex = 0;
  int selectIndex1 = 0;
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                // Go.route(
                //       // context,
                //     );
              },
              child: CarouselSlider(
                items: List.generate(
                  widget.img.length,
                  (index) {
                    return Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.img[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                carouselController: _controller,
                options: CarouselOptions(
                  height: widget.height,
                  enlargeCenterPage: widget.enlargeCenterPage,
                  viewportFraction: widget.viewportFraction,
                  autoPlay: widget.autoPlay,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.img.length,
              (indx) => currentIndex == indx
                  ? const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ActiveDot(),
                    )
                  : const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InActive(),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _activeindicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8.0,
      width: isActive ? 8 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: themebuttoncolor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget _inactiveindicator(bool isInActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isInActive ? 8 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

//Create the indicator list
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 2; i++) {
      if (currentIndex == i) {
        indicators.add(_activeindicator(true));
      } else {
        indicators.add(_inactiveindicator(false));
      }
    }
    return indicators;
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: themebuttoncolor),
    );
  }
}

class InActive extends StatelessWidget {
  const InActive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: themebackgroundcolor),
    );
  }
}
