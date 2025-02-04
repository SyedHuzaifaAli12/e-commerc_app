import 'package:e_commerce/view/cart_screen/cart_screen.dart';
import 'package:e_commerce/theme/colors.dart';
import 'package:e_commerce/view/profile_screen/profile_screen.dart';
import 'package:e_commerce/view/home_screen/home_screen.dart';
import 'package:e_commerce/view/wish_list_screen/wish_list.dart';
import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    setState(() {
      _pageController.jumpToPage(page);
    });
  }

  void PageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  void onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: onPageChanged,
            children: const [
              HomeScreen(),
              WishListScreen(),
              CartScreen(),
              ProfileScreen(),
            ],
          ),
          Container(
            height: 60,
            color: themewhitecolor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      navigationTapped(index);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          index == 0
                              ? Icons.home_outlined
                              : index == 1
                                  ? Icons.favorite_outline_outlined
                                  : index == 2
                                      ? Icons.shopping_bag_outlined
                                      : Icons.person_outline,
                          color: _currentIndex == index
                              ? themeblackcolor
                              : themebuttoncolor,
                          size: 35,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        _currentIndex == index
                            ? Container(
                                width: 25,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: themeblackcolor,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
