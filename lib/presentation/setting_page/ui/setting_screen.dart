import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/routes/go_routes.dart';
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
    return Scaffold(
      body: ChangeNotifierProvider<SettingProvider>.value(
        value: settingProvider,
        child: Consumer<SettingProvider>(
          builder: (context, settingProvider, child) {
            return ListView(
              children: [
                InkWell(
                  onTap: () {
                    return context.go(AppRoutes.profileScreen);
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: settingProvider.imageList1.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
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
                                  // trackColor: ColorStyle.primaryColor,
                                  // activeTrackColor: ColorStyle.primaryColor,
                                  value: settingProvider.isSwitched,
                                  onChanged: (bool value) {
                                    settingProvider.chageSwitch();
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
                  itemCount: settingProvider.imageList2.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
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
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
