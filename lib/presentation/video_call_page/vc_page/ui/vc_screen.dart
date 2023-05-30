import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class VcScreen extends StatelessWidget {
  const VcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/image1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 30),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 150,
                width: 100,
                color: ColorStyle.blackColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
