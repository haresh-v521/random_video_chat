import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/validation/textform_validation.dart';
import 'package:video_call/core/widgets/custom_button.dart';
import 'package:video_call/core/widgets/google_facbook_row_widget.dart';
import 'package:video_call/core/widgets/gradient_text.dart';
import 'package:video_call/core/widgets/or_row_widget.dart';
import 'package:video_call/core/widgets/text_filed_widget.dart';
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
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                child: Form(
                  key: signInProvider.formGlobalKey,
                  child: Column(
                    children: [
                      Center(
                        child: GradientTextWidget(
                          gradientTextName: TextStringConstant.signInText,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: TextStringConstant.usernameText,
                        controllerName: signInProvider.signInUsername,
                        validationMsg: TextStringConstant.usernameText,
                          validate:  (value){
                            return TextFieldValidation.textEmptyValidation(
                              value: value,
                              validationMsg: TextStringConstant.usernameText,
                            );
                          }
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: TextStringConstant.passwordText,
                        controllerName: signInProvider.signInPassword,
                        validationMsg: TextStringConstant.passwordText,
                          hideText: true,
                          validate:  (value){
                            return TextFieldValidation.textEmptyValidation(
                              value: value,
                              validationMsg: TextStringConstant.passwordText,
                            );
                          }
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      OrRowTextWidget.orRowText(),
                      const SizedBox(
                        height: 25,
                      ),
                      GoogleFacebookRowWidget.googleFacebookRow(),
                      const SizedBox(
                        height: 180,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            TextStringConstant.dontHaveAnyAccountText,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: ColorStyle.greyColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: (){
                              return context.go(AppRoutes.signUp);
                            },
                            child: Text(
                              TextStringConstant.signUpTextButtonText,
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorStyle.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            if (signInProvider.formGlobalKey.currentState!
                                .validate()) {
                              return context.go(AppRoutes.bottomBar);
                            }
                          },
                          child: AuthUIButton(
                            buttonName: TextStringConstant.signInButtonText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
