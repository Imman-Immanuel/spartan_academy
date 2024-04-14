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
  ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return contactUsSplitContainer(context);
    double screenWidth = MediaQuery.of(Get.context!).size.width;
    return Obx(
      () => Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (s) {
            if (screenWidth < 575) {
              hc.isDraged.value = s.velocity.pixelsPerSecond.dx;
              print(" draged value ${hc.isDraged.value}");
            }
          },
          child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage("assets/images/contactUsbg (2).jpeg"),
                    fit: BoxFit.cover),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            // Center(
                            //   child: Text(
                            //     "data",
                            //     style: TextStyle(color: Colors.white),
                            //   ),
                            // ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 47.0),
                                child: contactUsWidget(context),
                              ),
                            ),
                            headerWidget(),
                            blurWidget(),
                            animatedDrawer()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
