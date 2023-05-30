import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeProvider extends ChangeNotifier {
  List imageList = [
    "assets/images/image1.jpg",
    "assets/images/image4.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg"
  ];

  late MatchEngine matchEngine;
  late List<SwipeItem> SwipeItems;
  late bool isNoItem = false;

  void reset() {
    SwipeItems = [];
    for (var content in imageList) {
      var swipeItem = SwipeItem(
        content: content,
      );
      SwipeItems.add(swipeItem);
      notifyListeners();
    }
    matchEngine = MatchEngine(swipeItems: SwipeItems);
    isNoItem = false;
    notifyListeners();
  }

  void noIteam() {
    isNoItem = true;
    notifyListeners();
  }
}
