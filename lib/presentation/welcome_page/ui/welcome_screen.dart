import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/string_constant.dart';
import 'package:video_call/core/theme_data/theme_extension.dart';
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
                  Text(StringConstant.enjoyTheText,
                      style: Theme.of(context)
                          .extension<VideoCallTheme>()!
                          .largeText1),
                  Text(StringConstant.convenienceOfText,
                      style: Theme.of(context)
                          .extension<VideoCallTheme>()!
                          .largeText1),
                  Text(StringConstant.communicationText,
                      style: Theme.of(context)
                          .extension<VideoCallTheme>()!
                          .largeText2),
                  Text(StringConstant.easilyAndForFreeText,
                      style: Theme.of(context)
                          .extension<VideoCallTheme>()!
                          .largeText1),
                  Text(StringConstant.easilyAndForFreeYouCanGetText,
                      style: Theme.of(context)
                          .extension<VideoCallTheme>()!
                          .smallText1),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 425,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/group.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  return context.go(AppRoutes.signUp);
                },
                child: AuthUIButton(buttonName: StringConstant.getStartButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
