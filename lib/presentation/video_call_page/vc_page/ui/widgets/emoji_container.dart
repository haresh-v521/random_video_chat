import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:video_call/core/colors/color_style.dart';

class EmojiCustomContainer extends StatelessWidget {
  const EmojiCustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.transparentColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.33,
        child: EmojiPicker(
          // textEditingController: chatProvider.chatText,
          config: Config(
            indicatorColor: ColorStyle.primaryColor,
            iconColorSelected: ColorStyle.primaryColor,
          ),
        ),
      ),
    );
  }
}
