import 'dart:js';

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

Widget homePageWiget({context}) {
  return Column(
    children: [
      welcomeSplitContainerWidget1(
          imgPath: 'images/Spartan_logo.png',
          heading: welcomeContents[0]['heading']!,
          content: welcomeContents[0]['content']!,
          context: context),
      welcomeSplitContainerWidget1(
          imgPath: 'images/Spartan_logo.png',
          heading: welcomeContents[1]['heading']!,
          content: welcomeContents[1]['content']!,
          context: context),
      welcomeSplitContainerWidget1(
          imgPath: 'images/Spartan_logo.png',
          heading: welcomeContents[2]['heading']!,
          content: welcomeContents[2]['content']!,
          context: context),
      welcomeSplitContainerWidget1(
          imgPath: 'images/Spartan_logo.png',
          heading: welcomeContents[3]['heading']!,
          content: welcomeContents[3]['content']!,
          context: context),
    ],
  );
}

Widget carsoalModel(String imgPath, String name, String designation,
    [String? designation2]) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
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
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            if (designation2 != null) ...[
              const SizedBox(
                height: 5,
              ),
              Text(
                designation2,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
            const SizedBox(
              height: 5,
            ),
            Text(
              designation,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
