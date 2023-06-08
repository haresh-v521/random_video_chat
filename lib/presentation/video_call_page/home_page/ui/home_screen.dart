import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:video_call/core/string/text_string_constant.dart';
import 'package:video_call/core/widgets/willpop_alert_dialog.dart';
import 'package:video_call/presentation/video_call_page/home_page/business/providers/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeProvider homeProvider = HomeProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeProvider.swipeItemsFunction(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backScreen,
      child: ChangeNotifierProvider.value(
        value: homeProvider,
        child: Consumer<HomeProvider>(
          builder: (context, homeProvider, child) {
            return Scaffold(
              body: Container(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: homeProvider.isNoItem
                    ? Center(
                        child: Text(TextStringConstant.noDataFound),
                      )
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        child: SwipeCards(
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Image.asset(
                                    homeProvider.imageList[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                          matchEngine: homeProvider.matchEngine,
                          onStackFinished: () {
                            homeProvider.noIteam();
                          },
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
  Future<bool> backScreen() async {
    WillPopAlertDialog.exitAppDialog(context: context);
    return true;
  }
}


class Content {
  final String? text;
  Content({this.text});
}
