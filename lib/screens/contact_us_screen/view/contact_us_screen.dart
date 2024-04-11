import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../global/global_widgets.dart';
import '../../home_screen/home_controller.dart';
import '../../home_screen/home_widgets.dart';
import '../contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return contactUsSplitContainer(context);
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Obx(
      () => Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            onHorizontalDragEnd: (s) {
              print("runtypetime ${s.velocity.pixelsPerSecond.dx.runtimeType}");
              double dragedDouble = s.velocity.pixelsPerSecond.dx;
              hc.isDraged.value = dragedDouble;
              print(" draged value ${hc.isDraged}");
            },
            child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/contactUsbg.jpeg"),
                      fit: BoxFit.cover),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 47.0),
                              child: contactUsWidget(context),
                            ),
                            headerWidget(),
                            Align(
                                alignment: Alignment.topRight,
                                child: animatedDrawer())
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
