import 'dart:js';
import 'dart:js';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spartan_academy/screens/admin_dashboard_screen/view/admin_dashboard_screen.dart';
import 'package:spartan_academy/screens/admin_login_screen/view/admin_login_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen/view/contact_us_screen.dart';
import 'package:spartan_academy/screens/members_screen/view/members_screen.dart';
import 'package:spartan_academy/screens/registration_screen/view/registration_screen.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';

import '../screens/home_screen/home_controller.dart';
import '../screens/home_screen/home_widgets.dart';

final HomeController hc = Get.put(HomeController());

Widget inputBoxWidget(String labelText,
    {bool obscureText = false,
    TextInputType? textInputType,
    required TextEditingController controler}) {
  return TextFormField(
    controller: controler,
    obscureText: obscureText,
    keyboardType: textInputType,
    decoration: InputDecoration(
      labelText: labelText,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              homeMenuWidget(
                menuName: "Home",
                indexed: "0",
                onPressFunc: () {
                  Get.offAll(WelcomeScreen(), transition: Transition.fadeIn);
                  hc.selectedButton.value = "0";
                },
              ),
              homeMenuWidget(
                indexed: "1",
                menuName: "Members",
                onPressFunc: () {
                  Get.offAll(MembersScreen(), transition: Transition.fadeIn);
                  hc.selectedButton.value = "1";
                },
              ),
              homeMenuWidget(
                indexed: "2",
                menuName: "Contact Us",
                onPressFunc: () {
                  Get.offAll(ContactUsScreen(), transition: Transition.fadeIn);
                  hc.selectedButton.value = "2";
                },
              ),
              homeMenuWidget(
                indexed: "3",
                menuName: "Registration",
                onPressFunc: () {
                  Get.offAll(RegistrationScreen(),
                      transition: Transition.fadeIn);
                  hc.selectedButton.value = "3";
                },
              ),
              homeMenuWidget(
                indexed: "4",
                menuName: "Admin",
                onPressFunc: () {
                  Get.offAll(AdminLoginScreen(), transition: Transition.fadeIn);
                  hc.selectedButton.value = "4";
                },
              ),
            ],
          ).paddingOnly(left: 10),
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            contaire(),
          ],
        );
}

Widget contaire() {
  return GestureDetector(
      onHorizontalDragEnd: (s) {
        double dragedDouble = s.velocity.pixelsPerSecond.dx;
        hc.isDraged.value = dragedDouble;
      },
      child: Stack(children: [
        IconButton(
            onPressed: () {
              if (hc.isDraged.value >= 0) {
                hc.isDraged.value = -1;
              } else {
                hc.isDraged.value = 1;
              }
            },
            icon: Icon(
              Icons.menu,
              color: Colors.blue,
            )),
        // animatedDrawer()
      ]));
}

Widget animatedDrawer() {
  return Align(
    alignment: Alignment.topRight,
    child: AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: hc.isDraged.value > 0
          ? 0
          : MediaQuery.sizeOf(Get.context!).width * 0.8,
      height: MediaQuery.sizeOf(Get.context!).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mobileHomeMenuWidget(
            icons: Icons.home,
            menuName: "Home",
            indexed: "0",
            onPressFunc: () {
              Get.offAll(WelcomeScreen(), transition: Transition.fadeIn);
              hc.selectedButton.value = "0";
            },
          ),
          mobileHomeMenuWidget(
            icons: Icons.group,
            indexed: "1",
            menuName: "Members",
            onPressFunc: () {
              Get.offAll(MembersScreen(), transition: Transition.fadeIn);
              hc.selectedButton.value = "1";
            },
          ),
          mobileHomeMenuWidget(
            icons: Icons.account_box,
            indexed: "2",
            menuName: "Contact Us",
            onPressFunc: () {
              Get.offAll(ContactUsScreen(), transition: Transition.fadeIn);
              hc.selectedButton.value = "2";
            },
          ),
          mobileHomeMenuWidget(
            icons: Icons.note_alt_rounded,
            indexed: "3",
            menuName: "Registration",
            onPressFunc: () {
              Get.offAll(RegistrationScreen(), transition: Transition.fadeIn);
              hc.selectedButton.value = "3";
            },
          ),
          mobileHomeMenuWidget(
            icons: Icons.admin_panel_settings_sharp,
            indexed: "4",
            menuName: "Admin",
            onPressFunc: () {
              Get.offAll(AdminLoginScreen(), transition: Transition.fadeIn);
              hc.selectedButton.value = "4";
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    ),
  );
}
