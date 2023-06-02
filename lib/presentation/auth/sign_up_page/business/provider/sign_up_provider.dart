import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier {
  TextEditingController signUpUsername = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpRepeatPassword = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
}
