import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/presentation/video_call_page/vc_page/business/provider/chat_container_provider.dart';

class EmojiCustomContainer extends StatefulWidget {
  const EmojiCustomContainer({Key? key}) : super(key: key);

  @override
  State<EmojiCustomContainer> createState() => _EmojiCustomContainerState();
}

class _EmojiCustomContainerState extends State<EmojiCustomContainer> {
  ChatContainerProvider chatContainerProvider = ChatContainerProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChatContainerProvider>.value(
      value: chatContainerProvider,
      child: Consumer<ChatContainerProvider>(
        builder: (context, chatProvider, child) {
          return Scaffold(
            backgroundColor: ColorStyle.transparentColor,
            body: SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              child: EmojiPicker(
                textEditingController: chatProvider.chatText,
                config: Config(
                  indicatorColor: ColorStyle.primaryColor,
                  iconColorSelected: ColorStyle.primaryColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
