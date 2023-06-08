import 'package:flutter/material.dart';

class VideoCallTheme extends ThemeExtension<VideoCallTheme> {
  final TextStyle? hintText;

  VideoCallTheme({this.hintText,});

  @override
  ThemeExtension<VideoCallTheme> copyWith({
    TextStyle? hintText,
  }) {
    return VideoCallTheme(
        hintText: hintText,);
  }

  @override
  ThemeExtension<VideoCallTheme> lerp(
      covariant ThemeExtension<VideoCallTheme>? other, double t) {
    if (other is! VideoCallTheme) {
      return this;
    }
    return VideoCallTheme(
      hintText: TextStyle.lerp(hintText, other.hintText, t),
    );
  }
}