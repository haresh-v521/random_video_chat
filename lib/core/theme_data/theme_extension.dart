import 'package:flutter/material.dart';

class VideoCallTheme extends ThemeExtension<VideoCallTheme> {
  final TextStyle? largeText1;
  final TextStyle? largeText2;
  final TextStyle? smallText1;
  final TextStyle? buttonText1;
  final TextStyle? largeText3;

  VideoCallTheme({this.largeText1, this.largeText2, this.smallText1,this.buttonText1,this.largeText3});

  @override
  ThemeExtension<VideoCallTheme> copyWith({
    TextStyle? largeText2,
    TextStyle? largeText1,
    TextStyle? smallText1,
    TextStyle? buttonText1,
    TextStyle? largeText3,
  }) {
    return VideoCallTheme(
        largeText2: largeText2, largeText1: largeText1, smallText1: smallText1,buttonText1:buttonText1,largeText3:largeText3);
  }

  @override
  ThemeExtension<VideoCallTheme> lerp(
      covariant ThemeExtension<VideoCallTheme>? other, double t) {
    if (other is! VideoCallTheme) {
      return this;
    }
    return VideoCallTheme(
      // largeText1Color:Color.lerp(largeText1Color,other.largeText1Color,t),
      largeText1: TextStyle.lerp(largeText1, other.largeText1, t),
      largeText2: TextStyle.lerp(largeText2, other.largeText2, t),
      smallText1: TextStyle.lerp(smallText1, other.smallText1, t),
      buttonText1: TextStyle.lerp(buttonText1, other.buttonText1, t),
      largeText3: TextStyle.lerp(largeText3, other.largeText3, t),
    );
  }
}
