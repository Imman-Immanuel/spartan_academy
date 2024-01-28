import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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

Widget carsoalModel(
  String imgPath,
  String name,
) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 100.0,
      minHeight: 300.0,
      maxWidth: 300.0,
      maxHeight: 300.0,
    ),
    child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: Image.asset(imgPath)),
        const SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ).paddingOnly(left: 20, right: 20);
}

Widget classesWeOfferWidget() {
  double currentScreenWidth = MediaQuery.of(Get.context!).size.width;
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            width: 50,
          ),
          Text(
            "Classes Offer",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
      SizedBox(
        height: 50,
      ),
      CarouselSlider(
          items: [
            carsoalModel("assets/images/Sample_user.png", "sathish"),
            carsoalModel("assets/images/Sample_user.png", "kumar"),
            carsoalModel("assets/images/Sample_user.png", "imman"),
          ],
          options: CarouselOptions(
              height: 400,
              scrollDirection: Axis.horizontal,
              // enlargeCenterPage: true,
              // enlargeFactor: .4,
              viewportFraction: currentScreenWidth < 1000 ? .9 : .3,
              autoPlay: true)),
    ],
  );
}
