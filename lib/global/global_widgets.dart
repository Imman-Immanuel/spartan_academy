import 'dart:js';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spartan_academy/screens/admin_login_screen/view/admin_login_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen/view/contact_us_screen.dart';
import 'package:spartan_academy/screens/members_screen/view/members_screen.dart';
import 'package:spartan_academy/screens/registration_screen/view/registration_screen.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';
import '../screens/home_screen/home_controller.dart';
import '../screens/home_screen/home_widgets.dart';
import '../screens/home_screen/view/home_screen.dart';

final HomeController hc = Get.put(HomeController());

Widget inputBoxWidget(String labelText,
    {bool obscureText = false,
    TextInputType? textInputType,
    required TextEditingController controler}) {
  return TextFormField(
    style: TextStyle(color: Colors.white),
    autocorrect: true,
    maxLength: 10,
    maxLines: 1,
    controller: controler,
    obscureText: obscureText,
    keyboardType: textInputType,
    decoration: InputDecoration(
      hoverColor: Colors.white,
      fillColor: Colors.white,
      labelText: labelText,
      focusColor: Colors.white,
      border: const OutlineInputBorder(),
    ),
  );
}

Widget buttonWidget(String text, void Function()? onPressFunc,
    [Color? foregroundColor, Color? backgroundColor]) {
  return ElevatedButton(
    onPressed: onPressFunc,
    style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    child: SelectableText(
      text,
      style: const TextStyle(fontSize: 18),
    ),
  );
}

Widget headingText1(String text, [Color? color]) {
  return SelectableText(
    text,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
  );
}

Widget headerWidget() {
  double screenWidth = MediaQuery.sizeOf(Get.context!).width;
  return screenWidth > 575
      ? Padding(
          padding: const EdgeInsets.only(top: 12, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  tooltip: "Spartan Taekwondo\nMarial Art Academy",
                  onPressed: () {
                    Get.off(HomeScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  },
                  icon: Container(
                      height: 50,
                      width: 50,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(color: Colors.redAccent)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Spartan_logo.png"),
                        ],
                      ))),
              Container(
                child: Row(
                  children: [
                    homeMenuWidget(
                      menuName: "Home",
                      indexed: "0",
                      onPressFunc: () {
                        Get.offAll(WelcomeScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 1500));
                        hc.selectedButton.value = "0";
                      },
                    ),
                    homeMenuWidget(
                      indexed: "1",
                      menuName: "Members",
                      onPressFunc: () {
                        Get.offAll(MembersScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 1500));
                        hc.selectedButton.value = "1";
                      },
                    ),
                    homeMenuWidget(
                      indexed: "2",
                      menuName: "Contact Us",
                      onPressFunc: () {
                        Get.offAll(ContactUsScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 1500));
                        hc.selectedButton.value = "2";
                      },
                    ),
                    homeMenuWidget(
                      indexed: "3",
                      menuName: "Registration",
                      onPressFunc: () {
                        Get.offAll(RegistrationScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 1500));
                        hc.selectedButton.value = "3";
                      },
                    ),
                    homeMenuWidget(
                      indexed: "4",
                      menuName: "Admin",
                      onPressFunc: () {
                        Get.offAll(AdminLoginScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 1500));
                        hc.selectedButton.value = "4";
                      },
                    ),
                  ],
                ),
              ),
            ],
          ).paddingOnly(left: 10),
        )
      : Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  tooltip: "Home Page",
                  onPressed: () {
                    Get.off(const HomeScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  },
                  icon: SizedBox(
                      height: 50,
                      width: 50,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(color: Colors.red)),
                      child: Image.asset("assets/images/Spartan_logo.png"))),
              if (hc.selectedButton.value == "2" ||
                  hc.selectedButton.value == "3") ...[
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "${hc.homeMenuList[int.parse(hc.selectedButton.value)]}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: drawerIcon(),
              ),
            ],
          ),
        );
}

Widget drawerIcon() {
  return GestureDetector(
      onHorizontalDragEnd: (s) {
        double dragedDouble = s.velocity.pixelsPerSecond.dx;
        hc.isDraged.value = dragedDouble;
      },
      child: Stack(children: [
        IconButton(
            onPressed: () {
              print("Working");
              // if (hc.isDraged.value >= 0) {
              //   hc.isDraged.value = -1;
              // } else {
              hc.isDraged.value = -2;
              print("icon tab ${hc.isDraged.value}");
              // }
            },
            icon: const Icon(
              Icons.menu_open_sharp,
              color: Colors.white,
              size: 26,
            )),
        // animatedDrawer()
      ]));
}

Widget blurWidget() {
  return Obx(() => hc.isDraged.value < 0
      ? BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
          child: Container(
            height: MediaQuery.sizeOf(Get.context!).height,
            width: MediaQuery.sizeOf(Get.context!).width,
          ),
        )
      : Container());
}

Widget animatedDrawer() {
  double screenWidth = MediaQuery.of(Get.context!).size.width;

  return Align(
    alignment: Alignment.topRight,
    child: AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: hc.isDraged.value < 0
          ? MediaQuery.sizeOf(Get.context!).width * 0.8
          : 0,
      height: MediaQuery.sizeOf(Get.context!).height,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/background.jpeg"),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.white,
              ),
              mobileHomeMenuWidget(
                icons: Icons.home,
                menuName: "Home",
                indexed: "0",
                onPressFunc: () {
                  hc.selectedButton.value = "0";
                  Future.delayed((Duration(milliseconds: 300)), () {
                    Get.offAll(HomeScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  });
                  hc.isDraged.value = 2;

                  print("drage value ${hc.isDraged.value}");
                },
              ),
              mobileHomeMenuWidget(
                icons: Icons.group,
                indexed: "1",
                menuName: "Members",
                onPressFunc: () {
                  hc.selectedButton.value = "1";
                  Future.delayed((Duration(milliseconds: 300)), () {
                    Get.offAll(MembersScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  });
                  hc.isDraged.value = 2;

                  print("drage value ${hc.isDraged.value}");
                },
              ),
              mobileHomeMenuWidget(
                icons: Icons.account_box,
                indexed: "2",
                menuName: "Contact Us",
                onPressFunc: () {
                  hc.selectedButton.value = "2";
                  Future.delayed((Duration(milliseconds: 300)), () {
                    Get.offAll(ContactUsScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  });
                  hc.isDraged.value = 2;
                },
              ),
              mobileHomeMenuWidget(
                icons: Icons.note_alt_rounded,
                indexed: "3",
                menuName: "Registration",
                onPressFunc: () {
                  hc.selectedButton.value = "3";
                  Future.delayed((Duration(milliseconds: 300)), () {
                    Get.offAll(RegistrationScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  });
                  hc.isDraged.value = 2;
                },
              ),
              mobileHomeMenuWidget(
                icons: Icons.admin_panel_settings_sharp,
                indexed: "4",
                menuName: "Admin",
                onPressFunc: () {
                  hc.selectedButton.value = "4";
                  Future.delayed((Duration(milliseconds: 300)), () {
                    Get.offAll(AdminLoginScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(milliseconds: 1500));
                  });
                  hc.isDraged.value = 2;
                },
              ),
              const SizedBox(
                height: 60,
              ),
              const Divider(
                color: Colors.white,
              ).paddingOnly(left: 10, right: 10),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Version : ${hc.version.value}",
                style: TextStyle(color: Colors.white),
              ))
            ],
          ),
        ),
      ),
    ),
  );
}
