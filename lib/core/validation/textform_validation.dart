import 'package:video_call/core/string/text_string_constant.dart';


class TextFieldValidation {
  static textEmptyValidation({required dynamic value, required String validationMsg})
  {
    if (value!.isEmpty) {
      return "${TextStringConstant.pleaseEnterText} $validationMsg";
    }
  }
}