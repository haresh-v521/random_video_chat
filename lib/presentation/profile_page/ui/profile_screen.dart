import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/presentation/profile_page/business/providers/profile_provider.dart';

import 'widgets/text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileProvider profileProvider = ProfileProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextStringConstant.profileTitleText,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: ChangeNotifierProvider<ProfileProvider>.value(
        value: profileProvider,
        child: Consumer<ProfileProvider>(
          builder: (context, profileProvider, child) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage(ImageStringConstant.profileImage),
                          radius: 60,
                        ),
                        Positioned(
                          bottom: -5,
                          right: -25,
                          child: MaterialButton(
                            onPressed: () {},
                            elevation: 2,
                            color: ColorStyle.whiteColor,
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.edit,
                              color: ColorStyle.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    TextStringConstant.nameLabelText,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  CustomTextField.customText(
                      controllerName: profileProvider.nameText,
                      hintText: TextStringConstant.hintNameLabelText,
                      context: context),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    TextStringConstant.nameLabelText,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: CustomTextField.customText(
                        controllerName: profileProvider.bioText,
                        hintText: TextStringConstant.hintBioLabelText,
                        context: context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
