import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class WillPopAlertDialog
{
  /// willPop scope dialog
  static Future exitAppDialog({required BuildContext context}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              TextStringConstant.areYouSureExitAppText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(TextStringConstant.noText),
            ),
            ElevatedButton(
              onPressed: (){
                SystemNavigator.pop();
              },
              child: Text(TextStringConstant.yesText),
            ),
          ],
        );
      },
    );
  }
}