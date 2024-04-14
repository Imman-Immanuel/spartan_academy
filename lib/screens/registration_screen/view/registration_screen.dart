import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/global/global_widgets.dart';

import '../registration_widget.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  double screenWidth = MediaQuery.of(Get.context!).size.width;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (s) {
            if (screenWidth < 575) {
              hc.isDraged.value = s.velocity.pixelsPerSecond.dx;
              print(" draged value ${hc.isDraged}");
            }
          },
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/contactUsbg.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    // color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 47),
                                child: registrationScreen(context: context),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
