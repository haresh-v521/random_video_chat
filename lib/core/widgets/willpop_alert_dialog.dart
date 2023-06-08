import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class WillPopAlertDialog
{
  /// willpop scope dialog
  static Future exitAppDialog({required BuildContext context}) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              "Are you sure you want to exit",
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
              child: Text("No"),
            ),
            ElevatedButton(
              onPressed: (){
                SystemNavigator.pop();
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}