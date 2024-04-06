import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/globals.dart';
import 'package:url_launcher/url_launcher.dart';
import '../contact_us_screen/contact_us_controller.dart';
import 'welcome_controller.dart';

Widget welcomeSplitContainerWidget1({
  required String imgPath,
  required String heading,
  required String content,
  required BuildContext context,
  double imgHeight = 300,
  Color headingFontColor = Colors.black,
  Color contentFontColor = Colors.black,
  required bool imageContent,
}) {
  double screenWidth = MediaQuery.of(context).size.width;
  bool isSmallScreen = screenWidth < mediumScreenWidth;
  return isSmallScreen

      ///MOBILE VIEW
      ? Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                heading,
                style: TextStyle(
                    color: headingFontColor, fontSize: headingFontSize),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: imgHeight,
                      child: Center(child: Image.asset(imgPath))),
                  const SizedBox(
                    height: 30,
                  ),
                  SelectableText(
                    content,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        height: 2,
                        wordSpacing: 6,
                        letterSpacing: 1,
                        color: contentFontColor,
                        fontSize: contentFontSize),
                  )
                ],
              ),
            ],
          ).marginAll(20),
        )

      ///WEB VIEW
      : imageContent
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(
                        height: imgHeight, child: Image.asset(imgPath))),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          heading,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: headingFontColor,
                              fontSize: headingFontSize),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SelectableText(
                          maxLines: 7,
                          content,
                          // strutStyle: StrutStyle(),
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              height: 2,
                              wordSpacing: 6,
                              letterSpacing: 1,
                              color: contentFontColor,
                              fontSize: contentFontSize),
                        ).paddingOnly(right: 100)
                      ],
                    ),
                  ),
                )
              ],
            ).marginAll(20)
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          heading,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: headingFontColor,
                              fontSize: headingFontSize),
                        ).paddingOnly(left: 100),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          content,
                          strutStyle: const StrutStyle(),
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              height: 2,
                              wordSpacing: 6,
                              letterSpacing: 1,
                              color: contentFontColor,
                              fontSize: contentFontSize),
                        ).paddingOnly(left: 100)
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: SizedBox(
                        height: imgHeight, child: Image.asset(imgPath))),
              ],
            ).marginAll(20);
}

Widget welcomeContainerTwo({
  required String heading,
  required String content,
  Color headingFontColor = Colors.black,
  Color contentFontColor = Colors.black,
}) {
  double screenWidth = MediaQuery.of(Get.context!).size.width;
  bool isSmallScreen = screenWidth < mediumScreenWidth;
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: headingFontColor,
              fontSize: headingFontSize),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          content,
          // strutStyle: StrutStyle(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              height: 2,
              wordSpacing: 6,
              letterSpacing: 1,
              color: contentFontColor,
              fontSize: contentFontSize),
        )
      ],
    ).paddingOnly(
        left: isSmallScreen ? 20 : 100, right: isSmallScreen ? 20 : 100),
  );
}

///carsal model widget for home
Widget carsoalModel(String imgPath, String name, double height) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 100.0,
      minHeight: 100.0,
      maxWidth: height,
      maxHeight: height,
    ),
    child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 3.0),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: Image.asset(imgPath)),
        const SizedBox(
          height: 20,
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: contentFontSize,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget homePageWiget({context}) {
  double screenWidth = MediaQuery.of(Get.context!).size.width;
  bool isSmallScreen = screenWidth < mediumScreenWidth;
  return Container(
    decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.red.shade100,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        welcomeSplitContainerWidget1(
            imageContent: true,
            imgPath: 'assets/images/Spartan_logo.png',
            heading: welcomeContents[0]['heading']!,
            content: welcomeContents[0]['content']!,
            context: context),
        const SizedBox(
          height: 50,
        ),
        welcomeSplitContainerWidget1(
            imageContent: false,
            imgPath: 'assets/images/ourMission.png',
            heading: welcomeContents[1]['heading']!,
            content: welcomeContents[1]['content']!,
            context: context),
        SizedBox(
          height: isSmallScreen ? 150 : 200,
        ),
        Text("Why choose Us :",
                style: TextStyle(
                    fontSize: headingFontSize, fontWeight: FontWeight.bold))
            .paddingOnly(left: isSmallScreen ? 20 : 100),
        const SizedBox(
          height: 50,
        ),
        welcomeContainerTwo(
          heading: welcomeContents[2]['heading']!,
          content: welcomeContents[2]['content']!,
        ),
        const SizedBox(
          height: 50,
        ),
        welcomeContainerTwo(
          heading: welcomeContents[4]['heading']!,
          content: welcomeContents[4]['content']!,
        ),
        const SizedBox(
          height: 50,
        ),
        welcomeContainerTwo(
          heading: welcomeContents[3]['heading']!,
          content: welcomeContents[3]['content']!,
        ),
        const SizedBox(
          height: 50,
        ),
        welcomeContainerTwo(
          heading: welcomeContents[5]['heading']!,
          content: welcomeContents[5]['content']!,
        ),
        SizedBox(
          height: isSmallScreen ? 100 : 200,
        ),
      ],
    ),
  );
}

Widget classesOfferWidget() {
  double currentScreenWidth = MediaQuery.of(Get.context!).size.width;
  bool isSmallScreen = currentScreenWidth < mediumScreenWidth;

  return Column(
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // SizedBox(
      //   width: 50,
      // ),
      SelectableText(
        "Classes Offer",
        style:
            TextStyle(fontSize: headingFontSize, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 30,
      ),
      CarouselSlider(
          items: [
            carsoalModel(
                "assets/images/Sample_user.png",
                "Black Belt Certification",
                currentScreenWidth < 1000 ? 200.0 : 260.0),
            carsoalModel("assets/images/classesForKids.jpeg",
                "Classes for Kids", currentScreenWidth < 1000 ? 200.0 : 260.0),
            carsoalModel(
                "assets/images/Sample_user.png",
                "Self-Defense Workshops",
                currentScreenWidth < 1000 ? 200.0 : 260.0),
          ],
          options: CarouselOptions(
              height: currentScreenWidth < 1000 ? 310 : 380,
              scrollDirection: Axis.horizontal,
              // enlargeCenterPage: true,
              // animateToClosest: true,
              autoPlayCurve: Curves.easeInOutCirc,
              aspectRatio: 0.1,
              enlargeFactor: .4,
              viewportFraction: currentScreenWidth < 1000 ? .9 : .3,
              autoPlay: true)),
      SelectableText(
        "Get Started Today",
        style: TextStyle(fontSize: headingFontSize),
      ),
      const SizedBox(
        height: 25,
      ),
      SelectableText(
        "Embark on your Taekwondo journey with us. Join a community that is passionate about growth, empowerment, and camaraderie. Discover the benefits of martial arts in a welcoming and supportive environment.",
        style: TextStyle(
          height: 2,
          wordSpacing: 6,
          letterSpacing: 1,
          fontSize: contentFontSize,
        ),
        textAlign: TextAlign.center,
      ).paddingOnly(
          left: isSmallScreen ? 20 : 100, right: isSmallScreen ? 20 : 100),
      const SizedBox(
        height: 25,
      ),
      SelectableText(
        "Contact us for a free trial class or to learn more about our programs",
        style: TextStyle(
            letterSpacing: 1, wordSpacing: 2, fontSize: contentFontSize),
        textAlign: TextAlign.center,
      ).paddingOnly(
          left: isSmallScreen ? 20 : 100, right: isSmallScreen ? 20 : 100),
      const SizedBox(
        height: 25,
      ),

      Container(
        decoration: const BoxDecoration(
            color: Color(0xFF4B0000),
            border: Border(
                bottom: BorderSide(color: Color(0xFFCF8282), width: 3.0),
                top: BorderSide(color: Color(0xFFCF8282), width: 3.0))),
        width: MediaQuery.sizeOf(Get.context!).width,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < contactUsIconLinksPath.length; i++) ...[
              GestureDetector(
                onTap: () async {
                  var url = contactUsIconLinksPath[i]["url"];
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset(
                  contactUsIconLinksPath[i]["svg"],
                  height: 40,
                ),
              ),
            ]
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const SelectableText("Version : 1.3"),

      const SizedBox(
        height: 10,
      )
    ],
  );
}
