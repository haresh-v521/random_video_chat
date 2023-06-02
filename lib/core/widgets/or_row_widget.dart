import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class OrRowTextWidget
{
  static Widget orRowText()
  {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: ColorStyle.primaryColor,
              height: 50,
            ),
          ),
        ),
        Text(
          TextStringConstant.orText,
          style: TextStyle(
            color: ColorStyle.lightGreyColor,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: ColorStyle.primaryColor,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
