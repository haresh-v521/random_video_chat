import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/presentation/video_call_page/vc_page/business/provider/chat_container_provider.dart';

import 'widgets/custom_bottom_nvbar.dart';

class VcScreen extends StatelessWidget {
  const VcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChatContainerProvider chatContainerProvider = ChatContainerProvider();
    return Scaffold(
      body: ChangeNotifierProvider.value(
        value: chatContainerProvider,
        child: Consumer<ChatContainerProvider>(
          builder: (context, chatProvider, child) {
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    ImageStringConstant.image1,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 150,
                      width: 100,
                      color: ColorStyle.blackColor,
                    ),
                  ),
                ),
                CustomContainer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
