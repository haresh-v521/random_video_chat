import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:video_call/presentation/video_call_page/home_page/business/providers/home_provider.dart';
import 'package:video_call/presentation/welcome_page/ui/welcome_screen.dart';

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
    homeProvider.reset();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: homeProvider,
      child: Consumer<HomeProvider>(
        builder: (context, homeProvider, child) {
          return Scaffold(
            body: Container(
              padding: const EdgeInsets.all(20),
              child: homeProvider.isNoItem
                  ? const Center(
                      child: Text('No Data Found'),
                    )
                  : Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 60, horizontal: 20),
                          child: SwipeCards(
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
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
                              // setState(() {
                              //   provider.isNoItem = true;
                              // });
                            },
                          ),
                        ),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
