import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 35, left: 16, right: 16, bottom: 8),
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
                        const SizedBox(
                          height: 5,
                        ),
                        Text(TextStringConstant.easilyAndForFreeYouCanGetText,
                            style: Theme.of(context).textTheme.displaySmall),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 1.6,
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Image.asset(
                        ImageStringConstant.welcomePageImage,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    return context.go(AppRoutes.signUp);
                  },
                  child: CustomButton(
                      buttonName: TextStringConstant.getStartButtonText),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
