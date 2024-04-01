import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import '../home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: hc.screensList[hc.currentScreenSelectionIndex.value],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    color: Colors.black87,
                    height: 60,
                    child: screenWidth > 575
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: List.generate(
                                hc.homeMenuList.length,
                                (index) => homeMenuWidget(
                                    menuName: hc.homeMenuList[index],
                                    onPressFunc: () {
                                      hc.currentScreenSelectionIndex.value =
                                          index;
                                    },
                                    isSelected: index ==
                                            hc.currentScreenSelectionIndex.value
                                        ? true
                                        : false)),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onHorizontalDragEnd: (details) {
                                    if (details.primaryVelocity! > 0) {
                                      // Swiped right
                                      Navigator.of(context).pop();
                                    } else if (details.primaryVelocity! < 0) {
                                      // Swiped left
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    } // Close the dialog when swiping horizontally
                                  },
                                  onTap: () {
                                    showGeneralDialog(
                                      context: context,
                                      pageBuilder: (ctx, a1, a2) {
                                        return Text("Satis Your a winner");
                                      },
                                      transitionBuilder: (ctx, a1, a2, child) {
                                        return Transform.translate(
                                          // angle: math.radians(a1.value * 360),
                                          filterQuality: FilterQuality.low,
                                          offset: Offset(0.0, 0.15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 0,
                                                  top: 0,
                                                ),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 3, sigmaY: 3),
                                                  child: Container(
                                                    color: Colors.black45,
                                                    height: MediaQuery.sizeOf(
                                                            context)
                                                        .height,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Center(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            10),
                                                                height: 110,
                                                                width: 110,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                60),
                                                                        image:
                                                                            const DecorationImage(
                                                                          fit: BoxFit
                                                                              .fill,
                                                                          image:
                                                                              AssetImage("assets/images/background.jpeg"),
                                                                        )),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        const Divider(
                                                          color: Colors.white,
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: List.generate(
                                                              hc.homeMenuList.length,
                                                              (index) => mobileHomeMenuWidget(
                                                                  icons: hc.iconList[index],
                                                                  menuName: hc.homeMenuList[index],
                                                                  onPressFunc: () {
                                                                    hc.currentScreenSelectionIndex
                                                                            .value =
                                                                        index;
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  isSelected: index == hc.currentScreenSelectionIndex.value ? true : false)),
                                                        ).paddingOnly(left: 10)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      transitionDuration:
                                          Duration(milliseconds: 600),
                                    );
                                  },
                                  // child: ElevatedButton.styleFrom(
                                  //     fixedSize: Size(3, 1)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.menu_rounded,
                                      color: Colors.white,
                                    ),
                                  )),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
