// ignore_for_file: annotate_overrides

import 'package:e_commerce/router_structure/go.routes.dart';
import 'package:e_commerce/router_structure/navigator.dart';
import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  void dispose() {
    searchController.clear();
    super.dispose;
    ChangeNotifier();
  }

  void onSearch(context) {
    String query = searchController.text.trim().toLowerCase();

    if (query.isNotEmpty) {
      // If a specific search query is found, navigate to the Search Results page
      if (query == 'HomeScreen' ||
          query == 'homescreen' ||
          query == "homeScreen" ||
          query == "Homescreen") {
        Go.named(context, RouteName.homeScreen);
      } else if (query == 'profileScreen' ||
          query == "PROFILE" ||
          query == "ProfilE") {
        Go.named(context, RouteName.profileScreen);
      } else if (query == 'cartScreen' ||
          query == 'cart' ||
          query == "Cart" ||
          query == "CART") {
        Go.named(context, RouteName.cartScreen);
      } else if (query == 'wishlistScreen' ||
          query == 'WISHList' ||
          query == "wishList" ||
          query == "wishList") {
        Go.named(context, RouteName.wishLsitScreen);
      } else {
        Go.named(context, RouteName.defaultSearchScreen);
        // If no matching search query, navigate to the Default page
      }
    }
    ChangeNotifier();
  }
}
