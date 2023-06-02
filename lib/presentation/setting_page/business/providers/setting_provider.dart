import 'package:flutter/cupertino.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class SettingProvider extends ChangeNotifier {
  List imageList1 = [
    ImageStringConstant.notificationImage,
    ImageStringConstant.settingImage,
    ImageStringConstant.appearanceImage,
    ImageStringConstant.updateImage,
  ];

  List textList1 =[
    TextStringConstant.notificationText,
    TextStringConstant.gameSettingsText,
    TextStringConstant.appAppearanceText,
    TextStringConstant.checkForUpdatesText,
  ];

  bool isSwitched = false;
  void changeSwitch()
  {
    isSwitched=!isSwitched;
    notifyListeners();
  }

  List imageList2 = [
    ImageStringConstant.profileImage,
    ImageStringConstant.gamingImage,
    ImageStringConstant.helpImage,
    ImageStringConstant.historyImage,
  ];

  List textList2 =[
    TextStringConstant.profileText,
    TextStringConstant.responsibleGamingText,
    TextStringConstant.helpDeskText,
    TextStringConstant.historyText
  ];
}
