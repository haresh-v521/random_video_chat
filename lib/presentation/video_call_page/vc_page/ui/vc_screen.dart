import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/string/image_string_constant.dart';
import 'package:video_call/core/widgets/willpop_alert_dialog.dart';
import 'package:video_call/presentation/video_call_page/vc_page/business/provider/chat_container_provider.dart';

import 'widgets/custom_bottom_nvbar.dart';

class VcScreen extends StatefulWidget {
  const VcScreen({Key? key}) : super(key: key);

  @override
  State<VcScreen> createState() => _VcScreenState();
}

class _VcScreenState extends State<VcScreen> {
  @override
  Widget build(BuildContext context) {
    ChatContainerProvider chatContainerProvider = ChatContainerProvider();
    return WillPopScope(
      onWillPop: backScreen,
      child: Scaffold(
        body: ChangeNotifierProvider.value(
          value: chatContainerProvider,
          child: Consumer<ChatContainerProvider>(
            builder: (context, chatProvider, child) {
              return Stack(
                children: [
                  SizedBox(
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
                  const CustomContainer(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<bool> backScreen() async {
    WillPopAlertDialog.exitAppDialog(context: context);
    return true;
  }
}
