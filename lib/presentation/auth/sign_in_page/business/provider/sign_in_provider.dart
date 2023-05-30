import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier
{
  TextEditingController signInUsername = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  final formGlobalKey = GlobalKey <FormState> ();
}