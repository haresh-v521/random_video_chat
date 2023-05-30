import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string_constant.dart';
import 'package:video_call/core/widgets/auth_ui_button.dart';
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
                padding:
                const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                child: Form(
                  key: signInProvider.formGlobalKey,
                  child: Column(
                    children: [
                      Center(
                        child: GradientText(
                          StringConstant.signInText,
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
                        controllerName: signInProvider.signInUsername,
                        validationMsg: "username",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        hintText: StringConstant.signHintText2,
                        controllerName: signInProvider.signInPassword,
                        validationMsg: "password",
                      ),
                      const SizedBox(
                        height: 15,
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
                          Image.asset(
                            "assets/images/google.jpg",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
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
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConstant.dontHaveAnyAccountText,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: ColorStyle.greyColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            StringConstant.signUptextButtonText,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorStyle.primaryColor,
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
                            if (signInProvider!.formGlobalKey.currentState!
                                .validate()) {

                            }
                          },
                          child: AuthUIButton(
                            buttonName: StringConstant.signInButtonText,
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
