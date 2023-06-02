import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controllerName;
  final String validationMsg;
  final bool? hideText;
  final Function validate;

  const CommonTextField(
      {Key? key,
      required this.hintText,
      required this.controllerName,
      required this.validationMsg,
      this.hideText,
      required this.validate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
        obscureText: hideText == null ? false : true,
        cursorColor: ColorStyle.lightGreyColor,
        style: Theme.of(context).textTheme.labelSmall,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validate(value),
        controller: controllerName,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: ColorStyle.primaryColor),
            borderRadius: BorderRadius.circular(100),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            borderSide: BorderSide(width: 0.2, color: ColorStyle.primaryColor),
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
