import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/theme_data/theme_extension.dart';
import 'package:video_call/presentation/video_call_page/vc_page/business/provider/chat_container_provider.dart';

class ChatContainer extends StatefulWidget {
  const ChatContainer({Key? key}) : super(key: key);

  @override
  State<ChatContainer> createState() => _ChatContainerState();
}

class _ChatContainerState extends State<ChatContainer> {
  final ChatContainerProvider chatContainerProvider = ChatContainerProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatContainerProvider.myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    chatContainerProvider.myFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.transparentColor,
      body: ChangeNotifierProvider<ChatContainerProvider>.value(
        value: chatContainerProvider,
        child: Consumer<ChatContainerProvider>(
          builder: (context, chatProvider, child) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: WillPopScope(
                onWillPop: () {
                  if (chatProvider.isShowEmoji) {
                    chatProvider.isShowEmoji = false;
                  } else {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }
                  return Future.value(false);
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              color: ColorStyle.white70Color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Container(
                          alignment: Alignment.center,
                          height: 68,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorStyle.whiteColor,
                            borderRadius: BorderRadius.circular(70),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: TextField(
                                      autofocus: true,
                                      controller: chatProvider.chatText,
                                      // keyboardType: TextInputType.multiline,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                      // maxLines: null,
                                      onTap: () {
                                        if (chatProvider.isShowEmoji) {
                                          chatProvider.hideShowEmoji();
                                        }
                                      },
                                      decoration: InputDecoration(
                                          hintText: TextStringConstant
                                              .chatTextFieldText,
                                          border: InputBorder.none,
                                          hintStyle: Theme.of(context)
                                              .extension<VideoCallTheme>()!
                                              .hintText),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    FocusScope.of(context).unfocus();
                                    chatProvider.myFocusNode.requestFocus();
                                    chatProvider.hideShowEmoji();
                                  },
                                  icon: const Icon(Icons.emoji_emotions),
                                ),
                                IconButton(
                                  onPressed: () async {},
                                  icon: const Icon(Icons.send),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      chatProvider.isShowEmoji
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * 0.33,
                              child: EmojiPicker(
                                textEditingController: chatProvider.chatText,
                                config: Config(
                                  indicatorColor: ColorStyle.primaryColor,
                                  iconColorSelected: ColorStyle.primaryColor,
                                ),
                              ),
                            )
                          : Container(),
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
