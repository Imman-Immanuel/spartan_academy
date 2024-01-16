import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/globals.dart';

Widget welcomeSplitContainerWidget1({
  required String imgPath,
  required String heading,
  required String content,
  required BuildContext context,
  double imgHeight = 300,
  double headingFontSize = 30,
  double contentFontSize = 20,
  Color headingFontColor = Colors.black,
  Color contentFontColor = Colors.black,
}) {
  double screenWidth = MediaQuery.of(context).size.width;
  bool isSmallScreen = screenWidth < mediumScreenWidth;
  return isSmallScreen
      ? Center(
          child: Column(
            children: [
              SizedBox(height: imgHeight, child: Image.asset(imgPath)),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                        color: headingFontColor, fontSize: headingFontSize),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    content,
                    style: TextStyle(
                        color: contentFontColor, fontSize: contentFontSize),
                  )
                ],
              ),
            ],
          ).marginAll(20),
        )
      : Row(
          children: [
            Expanded(
                child:
                    SizedBox(height: imgHeight, child: Image.asset(imgPath))),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(
                          color: headingFontColor, fontSize: headingFontSize),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      content,
                      style: TextStyle(
                          color: contentFontColor, fontSize: contentFontSize),
                    )
                  ],
                ),
              ),
            )
          ],
        ).marginAll(20);
}
