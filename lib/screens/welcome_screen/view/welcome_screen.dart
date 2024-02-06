import 'package:flutter/material.dart';
import 'package:spartan_academy/globals.dart';
import '../welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 325,
        ),
        Text(
          style: TextStyle(fontSize: 30),
          "scroll down",
        ),
        SizedBox(
          height: 325,
        ),
        homePageWiget(context: context),
        classesOfferWidget()
      ],
    ));
  }
}
