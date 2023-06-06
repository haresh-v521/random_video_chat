import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/widgets/custom_button.dart';
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
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ChangeNotifierProvider<ProfileProvider>.value(
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
                            foregroundImage: AssetImage(
                                ImageStringConstant.profileImage),
                            radius: 60,
                          ),
                          Positioned(
                            bottom: -5,
                            right: -25,
                            child: MaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              color: ColorStyle.whiteColor,
                              shape: const CircleBorder(),
                              child: Icon(
                                Icons.edit,
                                color: ColorStyle.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      TextStringConstant.nameLabelText,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField.customText(
                        controllerName: profileProvider.nameText,
                        hintText: TextStringConstant.hintNameLabelText,
                        context: context),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      TextStringConstant.nameBioText,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField.customText(
                        controllerName: profileProvider.bioText,
                        hintText: TextStringConstant.hintBioLabelText,
                        context: context,
                        extra: true),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                      child: CustomButton(
                          buttonName: TextStringConstant.submitText),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
