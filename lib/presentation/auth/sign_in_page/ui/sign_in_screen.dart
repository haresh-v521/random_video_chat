import 'package:flutter/material.dart';
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
import 'package:video_call/presentation/auth/sign_in_page/business/provider/sign_in_provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final SignInProvider signInProvider = SignInProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<SignInProvider>.value(
        value: signInProvider,
        child: Consumer<SignInProvider>(
          builder: (context, signInProvider, child) {
            return Form(
              key: signInProvider.formGlobalKey,
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
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: GradientTextWidget(
                                      gradientTextName:
                                          TextStringConstant.signInText,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  CommonTextField(
                                    hintText: TextStringConstant.usernameText,
                                    controllerName:
                                        signInProvider.signInUsername,
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
                                      hintText: TextStringConstant.passwordText,
                                      controllerName:
                                          signInProvider.signInPassword,
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
                                  OrRowTextWidget.orRowText(),
                                  const SizedBox(
                                    height: 25,
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              TextStringConstant
                                                  .dontHaveAnyAccountText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              return context
                                                  .go(AppRoutes.signUp);
                                            },
                                            child: Text(
                                                TextStringConstant
                                                    .signUpTextButtonText,
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
                                            if (signInProvider
                                                .formGlobalKey.currentState!
                                                .validate()) {
                                              return context
                                                  .go(AppRoutes.bottomBar);
                                            }
                                          },
                                          child: CustomButton(
                                            buttonName: TextStringConstant
                                                .signInButtonText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
    );
  }
  Future<bool> backScreen() async {
    WillPopAlertDialog.exitAppDialog(context: context);
    return true;
  }
}
