import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/string/text_string_constant.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextStringConstant.historyTitleText,
            style: Theme.of(context).textTheme.headlineLarge),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              TextStringConstant.palashPandyaText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text(
              TextStringConstant.timeForCallingText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam,
                    size: 28,
                    color: ColorStyle.greyTextColor,
                  ),
                ),
                Image.asset(
                  ImageStringConstant.addUserMaleImage,
                  height: 28,
                  width: 28,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
