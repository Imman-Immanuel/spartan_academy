import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';
import '../home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Obx(() => Scaffold(
            // appBar: AppBar(
            //     bottom: PreferredSize(
            //         preferredSize: Size.fromHeight(2.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Container(
            //               color: Colors.red,
            //               width: MediaQuery.of(Get.context!).size.width / 2.27,
            //               height: 3,
            //             ),
            //           ],
            //         )),
            //     title: FloatingActionButton(
            //       tooltip: "Home Page",
            //       hoverColor: Colors.black38,
            //       splashColor: Colors.black,
            //       backgroundColor: Colors.transparent,
            //       onPressed: () {
            //         hc.changeCurrentScreenSelectionIndex(0);
            //       },
            //       child: Image.asset(
            //         "assets/images/Spartan_logo.png",
            //         height: 50,
            //         width: 60,
            //       ),
            //     ),
            //     backgroundColor: Colors.black,
            //     actions: List.generate(hc.homeMenuList.length, (index) {
            //       if (index == hc.currentScreenSelectionIndex.value) {
            //         return homeMenuWidget(hc.homeMenuList[index], () {
            //           hc.changeCurrentScreenSelectionIndex(index);
            //         }, true);
            //       } else {
            //         return homeMenuWidget(hc.homeMenuList[index], () {
            //           hc.changeCurrentScreenSelectionIndex(index);
            //         });
            //       }
            //     })),
            body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: hc.screensList[hc.currentScreenSelectionIndex.value],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: Colors.black87,
                      height: 60,
                      child: screenWidth > 530
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
                                              hc.currentScreenSelectionIndex
                                                  .value
                                          ? true
                                          : false)),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.menu_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            )),
                  Container(
                    color: Colors.red,
                    height: 3,
                    width: 520,
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
