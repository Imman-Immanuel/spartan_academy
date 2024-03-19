import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import '../home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Obx(() => Scaffold(
            body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
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
                                              hc.currentScreenSelectionIndex
                                                  .value
                                          ? true
                                          : false)),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: 20,
                                                    top: 20,
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 400,
                                                    width: 200,
                                                  ),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        fixedSize: Size(3, 1)),
                                    child: Center(
                                      child: Icon(
                                        Icons.menu_rounded,
                                        color: Colors.white,
                                      ),
                                    )),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            )),
                  screenWidth > 575
                      ? Container(
                          color: Colors.red,
                          height: 3,
                          width: 565,
                        )
                      : Container()
                ],
              ),
            ),
          ],
        )));
  }
}
