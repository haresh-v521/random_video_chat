import 'package:flutter/material.dart';
import 'package:video_call/core/helper/firebase_helper.dart';
import 'package:video_call/core/string/image_string_constant.dart';
class GoogleFacebookRowWidget
{
  /// google facebook row wise set
  static Widget googleFacebookRow ({required BuildContext context})
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            FirebaseHelper.firebaseHelper.handleGoogleBtnClick(context: context);
          },
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