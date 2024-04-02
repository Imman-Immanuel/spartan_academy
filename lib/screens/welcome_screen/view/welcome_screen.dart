import 'package:flutter/material.dart';
import '../welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      width: double.infinity,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage("assets/images/background.jpeg"),
      //       fit: BoxFit.cover),
      // ),
      child: Column(
        children: [
          const SizedBox(
            height: 325,
          ),
          const SelectableText(
            style: TextStyle(fontSize: 30),
            "scroll down",
          ),
          const SizedBox(
            height: 325,
          ),
          homePageWiget(context: context),
          classesOfferWidget()
        ],
      ),
    ));
  }
}
