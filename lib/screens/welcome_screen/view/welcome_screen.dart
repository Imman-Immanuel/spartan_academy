import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../global/global_widgets.dart';
import '../../home_screen/home_controller.dart';
import '../../home_screen/home_widgets.dart';
import '../welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // final HomeController hc = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/HomePageBackground.jpg"))),
            ),
            headerWidget(),
          ]),
          homePageWiget(context: context),
          classesOfferWidget()
        ],
      )),
    );
  }
}
