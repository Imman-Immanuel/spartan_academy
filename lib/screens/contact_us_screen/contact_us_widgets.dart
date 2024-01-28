import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spartan_academy/screens/contact_us_screen/contact_us_controller.dart';
import 'package:spartan_academy/globals.dart';

Widget iconLink({required String iconPath, double size = 30}) {
  return SvgPicture.asset(
    iconPath,
    height: size,
  );
}

Widget contactUsInputBox(
    {required String label,
    required String hint,
    required TextEditingController controller,
    required TextInputType textInputType}) {
  return TextField(
    decoration: InputDecoration(
        label: Text(
          label,
        ),
        hintText: hint,
        focusColor: Colors.green),
    controller: controller,
    keyboardType: textInputType,
  );
}

Widget mapCard() {
  return SizedBox(
    height: 500,
    width: 500,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(16),
      child: const Center(
        child: Text('Map Here !'),
      ),
    ),
  );
}

Widget contactCard(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  bool isVerySmallScreen = screenWidth < verySmallScreenWidth;

  return SizedBox(
    width: 500,
    height: 500,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            const Text(
              'Get in Touch !',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlayfairDisplay-Italic'),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (int index = 0;
                        index < contactUsInputs.length;
                        index++) ...[
                      contactUsInputBox(
                          label: contactUsInputs[index]['label'],
                          hint: contactUsInputs[index]['hint'],
                          controller: contactUsInputs[index]['controller'],
                          textInputType: contactUsInputs[index]
                              ['textInputType']),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'SUBMIT',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int index = 0;
                    index < contactUsIconLinksPath.length;
                    index++) ...[
                  iconLink(iconPath: contactUsIconLinksPath[index])
                ],
              ],
            )
          ],
        ),
      ),
    ),
  );
}

void _submitForm() {}

Widget contactUsSplitContainer(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  bool isSmallScreen = screenWidth < mediumScreenWidth;

  return Center(
    child: SingleChildScrollView(
      child: isSmallScreen
          ? Column(
              children: [contactCard(context), mapCard()],
            )
          : Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [contactCard(context)],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [mapCard()],
                    )),
                  ],
                ),
              ],
            ),
    ),
  );
}
