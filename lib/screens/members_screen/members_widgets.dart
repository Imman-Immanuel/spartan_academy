import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget memberWidget(String imgPath, String name, String designation,
    [String? designation2]) {
  double screenWidth = MediaQuery.of(Get.context!).size.width;
  return screenWidth > 575
      ? Container(
          // color: Colors  .green
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black87,
                radius: 115,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage(imgPath),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    SelectableText(
                      name,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    if (designation2 != null) ...[
                      const SizedBox(
                        height: 5,
                      ),
                      SelectableText(
                        designation2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                    const SizedBox(
                      height: 5,
                    ),
                    SelectableText(
                      designation,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      : Container(
          // color: Colors.green,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black87,
                radius: 95,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(imgPath),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    SelectableText(
                      name,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    if (designation2 != null) ...[
                      const SizedBox(
                        height: 2,
                      ),
                      SelectableText(
                        designation2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                    const SizedBox(
                      height: 3,
                    ),
                    SelectableText(
                      designation,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
}

Widget masterCard() {
  double screenWidth = MediaQuery.of(Get.context!).size.width;

  return screenWidth > 575
      ? Column(
          children: [
            Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                      top: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                      bottom: BorderSide(color: Colors.black, width: 2),
                      left: BorderSide(color: Colors.black, width: 2)),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/master.png"))),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Chief Master",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontSize: 15),
            ),
            const SizedBox(height: 3),
            const SelectableText(
              "CHITTIBABU P",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 1),
            SelectableText(
              "General Secretary \n Of Puducherry Taekwondo \n Sports Association",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: -0.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                      top: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                      bottom: BorderSide(color: Colors.black, width: 2),
                      left: BorderSide(color: Colors.black, width: 2)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/master.png"))),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Chief Master",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                  // fontStyle: FontStyle.italic,
                  fontSize: 12),
            ),
            SelectableText(
              "CHITTIBABU P",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
            SelectableText(
              "General Secretary \n Of Puducherry Taekwondo \n Sports Association",
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );
}

Widget positioned(Widget childWidget) {
  double screenSize = MediaQuery.sizeOf(Get.context!).width;
  return screenSize > 575
      ? Positioned(
          top: 100,
          bottom: 90,
          left: 90,
          child: childWidget,
        )
      : Positioned(
          top: 90,
          bottom: 50,
          left: 10,
          child: childWidget,
        );
}
