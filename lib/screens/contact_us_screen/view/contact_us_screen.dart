import 'package:flutter/material.dart';

import '../contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return contactUsSplitContainer(context);
    return SingleChildScrollView(
      child: Container(
          // height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Admin_Login_Background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              contactUsWidget(context),
            ],
          )),
    );
  }
}
