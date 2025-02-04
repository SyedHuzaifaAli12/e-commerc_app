import 'package:e_commerce/models/wishlist_model.dart';
import 'package:flutter/material.dart';

class ChangeStateVariables with ChangeNotifier {
  int selectIndex = 0;
  stateChangeInt(int index) {
    selectIndex = index;
    notifyListeners();
  }

  bool password = true;
  setPassword() {
    password = !password;

    notifyListeners();
  }

  bool password2 = true;
  setPassword2() {
    password2 = !password2;

    notifyListeners();
  }

  bool expandText = true;

  expandedText() {
    expandText = !expandText;
    notifyListeners();
  }

  bool expandText1 = true;

  expandedText1() {
    expandText1 = !expandText1;
    notifyListeners();
  }

  bool expandText2 = true;

  expandedText2() {
    expandText2 = !expandText2;
    notifyListeners();
  }
  bool expandText3 = true;

  expandedText3() {
    expandText3 = !expandText3;
    notifyListeners();
  }

  bool isLoading = true;
  SetLaoding(val) async {
    isLoading = true;
    await Future.delayed(Duration(seconds: 1));
    isLoading = false;
    notifyListeners();
  }

  void deleteItem(int index) {
    wishList_model.removeAt(index);
    notifyListeners(); // Notify listeners to update the UI
  }

  int itemNumber = 0;
  updateQuantity(bool isIncrement) {
    if (isIncrement) {
      itemNumber++; // Increment the counter
    } else {
      if (itemNumber > 1) {
        itemNumber--; // Decrement the counter only if greater than 1
      }
    }
    notifyListeners();
  }
}
