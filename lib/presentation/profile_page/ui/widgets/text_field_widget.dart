import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class CustomTextField {
  static Widget customText(
      {required TextEditingController controllerName,
      required String hintText,required BuildContext context, bool? extra}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(

        maxLines: extra != null ? null : 1,
        keyboardType: extra != null ?
        TextInputType.multiline : TextInputType.text,
        cursorColor: ColorStyle.lightGreyColor,
        style: Theme.of(context).textTheme.titleMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controllerName,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.edit,color: ColorStyle.primaryColor,),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.titleMedium,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: ColorStyle.lightGreyColor),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(width: 0.2, color: ColorStyle.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
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
