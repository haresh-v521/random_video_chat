import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  const CustomButton({Key? key,  required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorStyle.primaryColor,
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              blurRadius: 0.2,
              spreadRadius: 0.5,
              color: ColorStyle.shadowColor,
            ),
          ],
        ),
        child: Text(buttonName,
            style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
