import 'dart:ui';

import 'package:flutter/material.dart';

import '../contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return contactUsSplitContainer(context);

    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/contactUsbg.jpeg"),
                fit: BoxFit.cover),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  contactUsWidget(context),
                ],
              ),
            ),
          )),
    );
  }
}
