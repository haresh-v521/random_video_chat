import 'package:flutter/material.dart';
import 'package:video_call/core/string/image_string_constant.dart';
class GoogleFacebookRowWidget
{
  static Widget googleFacebookRow ()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            ImageStringConstant.googleImage,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Image.asset(
          ImageStringConstant.facebookImage,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}