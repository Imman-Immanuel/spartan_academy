import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/contact_us_screen/contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ContactUs_Screen_Background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            contactUsScreen()
          ],
        ));
  }
}
