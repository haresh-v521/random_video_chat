// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:video_call/core/theme_data/theme_extension.dart';

class CommonWidgets {
  // ignore: non_constant_identifier_names
  Widget custom_button(
      // ignore: non_constant_identifier_names
      {required BuildContext context,
      required String button_name}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xffEE7966),
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              blurRadius: 0.2,
              spreadRadius: 0.5,
              color: Color(0xffE15943),
            ),
          ],
        ),
        child: Text(button_name,
            style: Theme.of(context).extension<VideoCallTheme>()!.buttonText1),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  /// custom textfield
  Widget custom_textField({required String hint_name}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        alignment: Alignment.centerLeft,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              blurRadius: 0.2,
              spreadRadius: 0.5,
              color: Color(0xffE15943),
            ),
          ],
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint_name,
              hintStyle: TextStyle(
                color: Color(0xff9A9A9A),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
