import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/contact_us_screen/contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          // height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Admin_Login_Background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              contactUsScreen(context: context)
            ],
          )),
    );
  }
}
