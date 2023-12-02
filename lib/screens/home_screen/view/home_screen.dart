import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import 'package:spartan_academy/screens/student_registration_screen/view/student_registration_screen.dart';

import '../home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    return Obx(() => Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF1B1B1A),
            actions: List.generate(hc.homeMenuList.length, (index) {
              if (index == hc.currentScreenSelectionIndex.value) {
                return homeMenuWidget(hc.homeMenuList[index], () {
                  hc.changeCurrentScreenSelectionIndex(index);
                }, true);
              } else {
                return homeMenuWidget(hc.homeMenuList[index], () {
                  hc.changeCurrentScreenSelectionIndex(index);
                });
              }
            })),
        // body: hc.screensList[hc.currentScreenSelectionIndex.value]
        body: const StudentRegistrationScreen()));
  }
}
