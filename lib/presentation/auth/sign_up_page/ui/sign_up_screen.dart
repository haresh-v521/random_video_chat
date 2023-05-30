import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string_constant.dart';
import 'package:video_call/core/widgets/auth_ui_button.dart';
import 'package:video_call/core/widgets/text_filed_widget.dart';
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
    return Scaffold(
      body: ChangeNotifierProvider<SignUpProvider>.value(
       value: signUpProvider,
        child: Consumer<SignUpProvider>(
          builder: (context, signUpProvider, child) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                child: Form(
                  key: signUpProvider.formGlobalKey,
                  child: Column(
                    children: [
                      Center(
                        child: GradientText(
                          StringConstant.signUpText,
                          gradientType: GradientType.linear,
                          radius: 2.5,
                          colors: [
                            ColorStyle.primaryColor,
                            ColorStyle.shadowColor,
                          ],
                          style: GoogleFonts.poppins(
                            fontSize: 48.0,
                            color: ColorStyle.primaryColor,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w600,
                            shadows: [
                              Shadow(
                                blurRadius: 0.3,
                                color: ColorStyle.primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: StringConstant.signHintText1,
                        controllerName: signUpProvider.signUpUsername,
                        validationMsg: "username",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: StringConstant.signHintText3,
                        controllerName: signUpProvider.signUpEmail,
                        validationMsg: "email",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: StringConstant.signHintText2,
                        controllerName: signUpProvider.signUpPassword,
                        validationMsg: "password",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: StringConstant.signHintText4,
                        controllerName: signUpProvider.signUpRepeatPassword,
                        validationMsg: "repeat password",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: Divider(
                                color: ColorStyle.primaryColor,
                                height: 50,
                              ),
                            ),
                          ),
                          Text(
                            StringConstant.orText,
                            style: TextStyle(
                              color: ColorStyle.lightGreyColor,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: Divider(
                                color: ColorStyle.primaryColor,
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/google.jpg",
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/images/facebook.jpg",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConstant.alreadyHaveAccount,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: ColorStyle.greyColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              return context.go(AppRoutes.signIn);
                            },
                            child: Text(
                              StringConstant.signIntextButtonText,
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
                              if (signUpProvider!.formGlobalKey.currentState!
                                  .validate()) {
                                // return context.go(AppRoutes.);
                              }
                            },
                            child: AuthUIButton(
                                buttonName: StringConstant.signUpButtonText)),
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
