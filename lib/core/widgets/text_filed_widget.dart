import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controllerName;
  final String validationMsg;

  const CommonTextField(
      {Key? key,
      required this.hintText,
      required this.controllerName,
      required this.validationMsg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please Enter Your $validationMsg";
          } else {
            return null;
          }
        },
        controller: controllerName,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorStyle.lightGreyColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0.2, color: ColorStyle.primaryColor),
            borderRadius: BorderRadius.circular(100),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            borderSide:
                BorderSide(width: 0.2, color: ColorStyle.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            borderSide: BorderSide(
              width: 0.5,
              color: ColorStyle.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
