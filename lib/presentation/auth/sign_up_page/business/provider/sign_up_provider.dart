import 'package:flutter/cupertino.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class SignUpProvider extends ChangeNotifier {
  TextEditingController signUpUsername = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpRepeatPassword = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();

  String? checkMatchPassword({required value}) {
    if (value != signUpPassword.text) {
      return TextStringConstant.passwordErrorMsg;
    }
    return null;
  }
}
