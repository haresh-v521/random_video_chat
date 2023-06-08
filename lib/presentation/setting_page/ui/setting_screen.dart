import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/widgets/willpop_alert_dialog.dart';
import 'package:video_call/presentation/history_page/ui/history_screen.dart';
import 'package:video_call/presentation/profile_page/ui/profile_screen.dart';
import 'package:video_call/presentation/setting_page/business/providers/setting_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  SettingProvider settingProvider = SettingProvider();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backScreen,
      child: Scaffold(
        body: ChangeNotifierProvider<SettingProvider>.value(
          value: settingProvider,
          child: Consumer<SettingProvider>(
            builder: (context, settingProvider, child) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ListView(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: settingProvider.imageList1.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset(
                              settingProvider.imageList1[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            settingProvider.textList1[index],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          trailing: index == 0
                              ? Transform.scale(
                                  scale: 0.8,
                                  child: CupertinoSwitch(
                                    activeColor: ColorStyle.primaryColor,
                                    value: settingProvider.isSwitched,
                                    onChanged: (bool value) {
                                      settingProvider.changeSwitch();
                                    },
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: ColorStyle.lightGreyColor,
                                  ),
                                ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Divider(
                        color: ColorStyle.dividerColor,
                        thickness: 1,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: settingProvider.imageList2.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if(index == 0)
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProfileScreen(),
                                  ),
                                );
                              }
                            else if(index == 3)
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HistoryScreen(),
                                  ),
                                );
                              }
                          },
                          child: ListTile(
                            leading: SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                settingProvider.imageList2[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              settingProvider.textList2[index],
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: ColorStyle.lightGreyColor,
                              ),
                            ),
                          ),
                        );
                      },
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
  Future<bool> backScreen() async {
    WillPopAlertDialog.exitAppDialog(context: context);
    return true;
  }
}
