import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/presentation/video_call_page/vc_page/business/provider/chat_container_provider.dart';
import 'package:video_call/presentation/video_call_page/vc_page/ui/widgets/chat_container.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  ChatContainerProvider chatContainerProvider = ChatContainerProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: chatContainerProvider,
      child: Consumer<ChatContainerProvider>(
        builder: (context, chatProvider, child) {
          return Scaffold(
            backgroundColor: ColorStyle.transparentColor,
            body: chatProvider.isChat
                ? const ChatContainer()
                : Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorStyle.whiteColor,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              ImageStringConstant.userIconAccountImage,
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                            const Icon(
                              Icons.mic,
                              size: 35,
                            ),
                            const Icon(
                              Icons.videocam,
                              size: 35,
                            ),
                            InkWell(
                              onTap: () {
                                chatProvider.showChat();
                              },
                              child: Image.asset(
                                ImageStringConstant.chatIconImage,
                                height: 32,
                                width: 32,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
