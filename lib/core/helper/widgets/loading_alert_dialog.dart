import 'package:flutter/material.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class LoadingAlertDialog {
  ///loader dialog
  static Future loaderDialog({required BuildContext context}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              TextStringConstant.loaderDialogTitleText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          actions: const [
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        );
      },
    );
  }
}
