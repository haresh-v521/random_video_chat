import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:video_call/core/colors/color_style.dart';

class GradientTextWidget extends StatelessWidget {
  final String gradientTextName;
  const GradientTextWidget({Key? key, required this.gradientTextName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GradientText(
      gradientTextName,
      gradientType: GradientType.linear,
      radius: 2.5,
      colors: [
        ColorStyle.primaryColor,
        ColorStyle.shadowColor,
      ],
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
