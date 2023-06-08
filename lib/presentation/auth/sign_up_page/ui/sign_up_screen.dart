import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/validation/textform_validation.dart';
import 'package:video_call/core/widgets/custom_button.dart';
import 'package:video_call/core/widgets/google_facbook_row_widget.dart';
import 'package:video_call/core/widgets/gradient_text.dart';
import 'package:video_call/core/widgets/or_row_widget.dart';
import 'package:video_call/core/widgets/text_filed_widget.dart';
import 'package:video_call/core/widgets/willpop_alert_dialog.dart';
import 'package:video_call/presentation/auth/sign_up_page/business/provider/sign_up_provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpProvider signUpProvider = SignUpProvider();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backScreen,
      child: Scaffold(
        body: ChangeNotifierProvider<SignUpProvider>.value(
          value: signUpProvider,
          child: Consumer<SignUpProvider>(
            builder: (context, signUpProvider, child) {
              return Form(
                key: signUpProvider.formGlobalKey,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minHeight: constraints.maxHeight),
                        child: IntrinsicHeight(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 28, right: 8, left: 8, bottom: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  children: [
                                    Center(
                                      child: GradientTextWidget(
                                        gradientTextName:
                                            TextStringConstant.signUpText,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CommonTextField(
                                      hintText: TextStringConstant.usernameText,
                                      controllerName:
                                          signUpProvider.signUpUsername,
                                      validationMsg:
                                          TextStringConstant.usernameText,
                                      validate: (value) {
                                        return TextFieldValidation
                                            .textEmptyValidation(
                                          value: value,
                                          validationMsg:
                                              TextStringConstant.usernameText,
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CommonTextField(
                                      hintText: TextStringConstant.emailText,
                                      controllerName:
                                          signUpProvider.signUpEmail,
                                      validationMsg:
                                          TextStringConstant.emailText,
                                      validate: (value) {
                                        if (!RegExp(
                                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                            .hasMatch(value)) {
                                          return TextStringConstant
                                              .emailErrorMsg;
                                        }
                                        return TextFieldValidation
                                            .textEmptyValidation(
                                          value: value,
                                          validationMsg:
                                              TextStringConstant.emailText,
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CommonTextField(
                                        hintText:
                                            TextStringConstant.passwordText,
                                        controllerName:
                                            signUpProvider.signUpPassword,
                                        validationMsg:
                                            TextStringConstant.passwordText,
                                        hideText: true,
                                        validate: (value) {
                                          return TextFieldValidation
                                              .textEmptyValidation(
                                            value: value,
                                            validationMsg:
                                                TextStringConstant.passwordText,
                                          );
                                        }),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CommonTextField(
                                        hintText: TextStringConstant
                                            .repeatPasswordText,
                                        controllerName:
                                            signUpProvider.signUpRepeatPassword,
                                        validationMsg: TextStringConstant
                                            .repeatPasswordText,
                                        hideText: true,
                                        validate: (value) {
                                          if (value !=
                                              signUpProvider
                                                  .signUpPassword.text) {
                                            return TextStringConstant
                                                .passwordErrorMsg;
                                          }
                                          return TextFieldValidation
                                              .textEmptyValidation(
                                            value: value,
                                            validationMsg: TextStringConstant
                                                .repeatPasswordText,
                                          );
                                        }),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    OrRowTextWidget.orRowText(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    GoogleFacebookRowWidget.googleFacebookRow(
                                        context: context),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  TextStringConstant
                                                      .alreadyHaveAccount,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  return context
                                                      .go(AppRoutes.signIn);
                                                },
                                                child: Text(
                                                    TextStringConstant
                                                        .signInTextButtonText,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                if (signUpProvider
                                                    .formGlobalKey.currentState!
                                                    .validate()) {
                                                  return context
                                                      .go(AppRoutes.signIn);
                                                }
                                              },
                                              child: CustomButton(
                                                  buttonName: TextStringConstant
                                                      .signUpButtonText),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<bool> backScreen() async {
    WillPopAlertDialog.exitAppDialog(context: context);
    return true;
  }

}
