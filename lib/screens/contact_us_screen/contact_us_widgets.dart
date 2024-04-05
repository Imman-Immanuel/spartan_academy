import 'dart:js';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spartan_academy/screens/contact_us_screen/contact_us_controller.dart';
import 'package:spartan_academy/globals.dart';
import 'package:spartan_academy/screens/registration_screen/registration_widget.dart';
import 'package:url_launcher/url_launcher.dart';

Widget iconLink({required String iconPath, double size = 40}) {
  return SvgPicture.asset(
    iconPath,
    height: size,
  );
}

Widget contactUsWidget(context) {
  double screeenWidth = MediaQuery.sizeOf(context).width;
  return leftRightBoxContainer(
      colum:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(
          height: 30,
        ),
        SelectableText(
          "Get In Touch",
          style: TextStyle(
            fontSize: headingFontSize,
          ),
        ),
        for (int index = 0; index < contactUsInputs.length; index++) ...[
          commonTextField(
              maxlength: contactUsInputs[index]['maxLength'],
              label: contactUsInputs[index]['label'],
              hint: contactUsInputs[index]['hint'],
              controller: contactUsInputs[index]['controller'])
        ],
        sendButtonWidget(ontab: () {
          contactUsValidation();
        }),
        Row(
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
                  height: screeenWidth < 575 ? 38 : 50,
                ),
              ),
            ]
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
      imgPath: "assets/images/Spartan_logo.png",
      context: context);
}
