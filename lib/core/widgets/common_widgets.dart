
import 'package:flutter/material.dart';
import 'package:video_call_app/core/theme_data/theme_extension.dart';

class CommonWidgets {
  // ignore: non_constant_identifier_names
   Widget custom_button(
      // ignore: non_constant_identifier_names
      {required BuildContext context, required String button_name}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: const Color(0xffEE7966)),
        child: Text(
          button_name,
          style: Theme.of(context)
            .extension<VideoCallTheme>()!
            .buttonText1
        ),
      ),
    );
  }
}
