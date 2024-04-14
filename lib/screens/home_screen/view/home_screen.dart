import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';

import '../../../global/global_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(
        () => GestureDetector(
          onHorizontalDragEnd: (s) {
            if (screenWidth < 575) {
              hc.isDraged.value = s.velocity.pixelsPerSecond.dx;
              print(" draged value ${hc.isDraged}");
            }
          },
          child: Stack(children: [
            WelcomeScreen(),
            blurWidget(),
            animatedDrawer(),
          ]),
        ),
      ),
    );
  }
}
