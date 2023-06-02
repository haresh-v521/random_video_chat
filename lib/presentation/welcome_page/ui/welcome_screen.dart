import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/widgets/auth_ui_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 35, left: 25, right: 18, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TextStringConstant.enjoyTheText,
                      style: Theme.of(context).textTheme.displayLarge),
                  Text(TextStringConstant.convenienceOfText,
                      style: Theme.of(context).textTheme.displayLarge),
                  Text(TextStringConstant.communicationText,
                      style: Theme.of(context).textTheme.displayMedium),
                  Text(TextStringConstant.easilyAndForFreeText,
                      style: Theme.of(context).textTheme.displayLarge),
                  SizedBox(
                    height: 5,
                  ),
                  Text(TextStringConstant.easilyAndForFreeYouCanGetText,
                      style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 425,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                ImageStringConstant.welcomePageImage,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  return context.go(AppRoutes.signUp);
                },
                child:
                    AuthUIButton(buttonName: TextStringConstant.getStartButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
