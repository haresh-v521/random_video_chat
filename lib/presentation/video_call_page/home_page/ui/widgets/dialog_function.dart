import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string/text_string_constant.dart';

Widget buttonWidget(IconData icon, Color color) {
  return Icon(
    icon,
    color: color,
    size: 45,
  );
}
actions(BuildContext context, String name, type) {
  showDialog(
    context: context,
    builder: (context) {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop(true);
        if (type == TextStringConstant.dialogText) {
          return context.go(AppRoutes.vcScreen);
        }
      });
      return AlertDialog(
        content: buttonWidget(
            type == TextStringConstant.liked ? Icons.done : Icons.close,
            type == TextStringConstant.liked
                ? ColorStyle.primaryColor
                : ColorStyle.primaryColor),
        title: Center(
          child: Text(
              type == TextStringConstant.liked ?
              TextStringConstant.callingTime : TextStringConstant.callRejected,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
      );
    },
  );
}
