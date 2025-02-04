// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> tabViews;

  CustomTabBar({required this.tabs, required this.tabViews});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          TabBar(
            // isScrollable: true,

            indicator: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: themebuttoncolor,
                  width: 4.0,
                ),
              ),
            ),
            labelColor: themebuttoncolor,
            unselectedLabelColor: themeblackcolor,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            tabs: tabs,
          ),
          Expanded(
            child: TabBarView(
              children: tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
