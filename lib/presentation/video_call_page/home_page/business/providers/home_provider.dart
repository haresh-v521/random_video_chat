import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/presentation/video_call_page/home_page/ui/home_screen.dart';
import 'package:video_call/presentation/video_call_page/home_page/ui/widgets/dialog_function.dart';

class HomeProvider extends ChangeNotifier {
  List imageList = [
    ImageStringConstant.image1,
    ImageStringConstant.image3,
    ImageStringConstant.image4,
    ImageStringConstant.image5,
    ImageStringConstant.image1
  ];

  late MatchEngine matchEngine;
  List<SwipeItem> swipeItems = [];
  late bool isNoItem = false;

  void swipeItemsFunction({required BuildContext context}) {
    for (int i = 0; i < imageList.length; i++) {
      swipeItems.add(
        SwipeItem(
          content: Content(text: imageList[i]),
          likeAction: () {
            actions(context, imageList[i], TextStringConstant.liked);
          },
          nopeAction: () {
            actions(context, imageList[i], TextStringConstant.rejected);
          },
        ),
      );
    }
    matchEngine = MatchEngine(swipeItems: swipeItems);
    isNoItem = false;
    notifyListeners();
  }

  void noIteam() {
    isNoItem = true;
    notifyListeners();
  }
}
