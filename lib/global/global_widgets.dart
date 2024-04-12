import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
              size: 30,
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
  return Align(
    alignment: Alignment.topRight,
    child: AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: hc.isDraged.value < 0
          ? MediaQuery.sizeOf(Get.context!).width * 0.8
          : 0,
      height: MediaQuery.sizeOf(Get.context!).height,
      child: Container(
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
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
                Get.offAll(WelcomeScreen(), transition: Transition.fadeIn);
                hc.selectedButton.value = "0";
                Future.delayed((Duration(milliseconds: 500)), () {
                  hc.isDraged.value = 2;
                });
              },
            ),
            mobileHomeMenuWidget(
              icons: Icons.group,
              indexed: "1",
              menuName: "Members",
              onPressFunc: () {
                Get.offAll(MembersScreen(), transition: Transition.fadeIn);
                hc.selectedButton.value = "1";
                Future.delayed((Duration(milliseconds: 500)), () {
                  hc.isDraged.value = 2;
                });
              },
            ),
            mobileHomeMenuWidget(
              icons: Icons.account_box,
              indexed: "2",
              menuName: "Contact Us",
              onPressFunc: () {
                Get.offAll(ContactUsScreen(), transition: Transition.fadeIn);
                hc.selectedButton.value = "2";
                Future.delayed((Duration(milliseconds: 500)), () {
                  hc.isDraged.value = 2;
                });
              },
            ),
            mobileHomeMenuWidget(
              icons: Icons.note_alt_rounded,
              indexed: "3",
              menuName: "Registration",
              onPressFunc: () {
                Get.offAll(RegistrationScreen(), transition: Transition.fadeIn);
                hc.selectedButton.value = "3";
                Future.delayed((Duration(milliseconds: 500)), () {
                  hc.isDraged.value = 2;
                });
              },
            ),
            mobileHomeMenuWidget(
              icons: Icons.admin_panel_settings_sharp,
              indexed: "4",
              menuName: "Admin",
              onPressFunc: () {
                Get.offAll(AdminLoginScreen(), transition: Transition.fadeIn);
                hc.selectedButton.value = "4";
                Future.delayed((Duration(milliseconds: 500)), () {
                  hc.isDraged.value = 2;
                });
              },
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    ),
  );
}
