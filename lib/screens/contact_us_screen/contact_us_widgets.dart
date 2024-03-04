import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  return leftRightBoxContainer(
      Colum:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "Get In Touch",
          style: TextStyle(
            fontSize: headingFontSize,
          ),
        ),

        for (int index = 0; index < contactUsInputs.length; index++) ...[
          commonTextField(
              label: contactUsInputs[index]['label'],
              hint: contactUsInputs[index]['hint'],
              controller: contactUsInputs[index]['controller'])
        ],
        // SizedBox(
        //   height: 15,
        // ),
        sendButtonWidget(ontab: () {
          contactUsValidation();
        }),
        // SizedBox(
        //   height: 30,
        // ),
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
                  height: 50,
                ),
              ),
            ]
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ]),
      imgPath: "images/Spartan_logo.png",
      context: context);
}

// for (int index = 0;
// index < contactUsInputs.length;
// index++) ...[
// contactUsInputBox(
// label: contactUsInputs[index]['label'],
// hint: contactUsInputs[index]['hint'],
// controller: contactUsInputs[index]['controller'],
// textInputType: contactUsInputs[index]
// ['textInputType']),
// const SizedBox(
// height: 5,
// )
// ],

//
// for (int index = 0;
// index < contactUsIconLinksPath.length;
// index++) ...[
// iconLink(iconPath: contactUsIconLinksPath[index])
// ],
