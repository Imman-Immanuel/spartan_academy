import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../global/global_widgets.dart';
import '../welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // final HomeController hc = Get.put(HomeController());
    final ScrollController _scrollController = ScrollController();

    return Obx(
      () => Scaffold(
        floatingActionButton: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          // height: _scrollController.offset > 725 ? 50 : 0,
          decoration: BoxDecoration(
              color: Colors.redAccent.shade100,
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            onPressed: () {
              print("sk ${_scrollController}");
              _scrollController.animateTo(
                0.0,
                duration: const Duration(
                    milliseconds: 500), // Adjust duration as needed
                curve: Curves.easeInOut, // Adjust curve as needed
              );
            },
            icon: const Icon(Icons.arrow_upward),
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
            controller: _scrollController,
            // reverse: true,
            child: GestureDetector(
              onHorizontalDragEnd: (s) {
                if (screenWidth < 575) {
                  hc.isDraged.value = s.velocity.pixelsPerSecond.dx;
                  print(" draged value ${hc.isDraged}");
                }
              },
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      height: screenWidth < 575
                          ? MediaQuery.sizeOf(context).height * 0.5
                          : MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/HomePageBackground.jpg"))),
                    ),
                    headerWidget(),
                  ]),
                  homePageWiget(context: context),
                  classesOfferWidget()
                ],
              ),
            )),
      ),
    );
  }
}
