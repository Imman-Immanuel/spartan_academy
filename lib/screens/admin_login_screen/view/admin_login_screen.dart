import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/global/global_widgets.dart';

import '../admin_login_controler.dart';

class AdminLoginScreen extends StatelessWidget {
  AdminLoginScreen({super.key});

  final ac = Get.put(AdminLoginController());
  @override
  Widget build(BuildContext context) {
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
                image: DecorationImage(
                    image: AssetImage("assets/images/adminBg.jpg"),
                    fit: BoxFit.cover),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10, sigmaX: 15),
                    child: Center(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              headerWidget(),
                              Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                      ),
                                      const Text(
                                        "ADMIN LOGIN",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      SizedBox(
                                          width: 350,
                                          child: inputBoxWidget('Gmail',
                                              controler:
                                                  ac.adminGmailControler)),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                          width: 350,
                                          child: inputBoxWidget('Password',
                                              controler: ac.passwordControler,
                                              obscureText: true)),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            ac.validation();
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.black87,
                                              foregroundColor: Colors.white,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 15)),
                                          child: const Text(
                                            "LOGIN",
                                            style: TextStyle(fontSize: 20),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              blurWidget(),
                              animatedDrawer()
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
