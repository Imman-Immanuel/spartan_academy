import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    final ScrollController _controller = ScrollController();

    return Obx(
      () => Scaffold(
        floatingActionButton: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: IconButton(
            onPressed: () {
              print("sk ${_controller.offset}");
              _controller.animateTo(
                0.0,
                duration:
                    Duration(milliseconds: 500), // Adjust duration as needed
                curve: Curves.easeInOut, // Adjust curve as needed
              );
            },
            icon: Icon(Icons.arrow_upward),
            color: Colors.black,
          ),
          decoration: BoxDecoration(
              color: Colors.redAccent.shade100,
              borderRadius: BorderRadius.circular(10)),
        ),
        body: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "assets/images/HomePageBackground.jpg"))),
                  ),
                  headerWidget(),
                  blurWidget(),
                  animatedDrawer()
                ]),
                homePageWiget(context: context),
                classesOfferWidget()
              ],
            )),
      ),
    );
  }
}
