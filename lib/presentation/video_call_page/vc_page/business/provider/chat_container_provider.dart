import 'package:flutter/material.dart';

class ChatContainerProvider extends ChangeNotifier {
  bool isShowEmoji = false;
  TextEditingController chatText = TextEditingController();
  late FocusNode myFocusNode;
  bool isChat = false;

  void hideShowEmoji() {
    isShowEmoji = !isShowEmoji;
    notifyListeners();
  }

  void showChat() {
    isChat = !isChat;
    notifyListeners();
  }
}
