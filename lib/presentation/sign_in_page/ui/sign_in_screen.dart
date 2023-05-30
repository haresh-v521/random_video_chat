import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:video_call/core/widgets/common_widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Center(
                child: GradientText(
                  "Sign In",
                  gradientType: GradientType.linear,
                  radius: 2.5,
                  colors: [
                    Color(0xffEE7966),
                    Color(0xffE15943),
                  ],
                  style: GoogleFonts.poppins(
                    fontSize: 48.0,
                    color: const Color(0xffEE7966),
                    letterSpacing: 3,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        blurRadius: 0.3,
                        color: Color(0xffEE7966),
                        // offset: Offset(2.0,2.0),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CommonWidgets().custom_textField(hint_name: "username"),
              SizedBox(
                height: 15,
              ),
              CommonWidgets().custom_textField(hint_name: "password"),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        color: Color(0xffEE7966),
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Color(0xff9A9A9A),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: Color(0xffEE7966),
                          height: 50,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/google.svg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                  // Image.asset(
                  //   "assets/images/google.png",
                  //   height: 40,
                  //   width: 40,
                  //   fit: BoxFit.cover,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/images/facebook.svg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Color(0xff555555),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Signup",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffEE7966),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Center(
                child: GestureDetector(
                  onTap: (){

                  },
                  child: CommonWidgets()
                      .custom_button(context: context, button_name: 'SignIn'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
