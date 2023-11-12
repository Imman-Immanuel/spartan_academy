import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/controllers/home_controller.dart';
import 'package:spartan_academy/screens/admin_dashboard_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen.dart';

import '../widgets/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    return Obx(() => Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF1B1B1A),
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
        body: AdminDashboardScreen()));
  }
}
