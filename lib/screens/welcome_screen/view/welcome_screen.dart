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
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/Background design output.jpg"))),
          ),
          homePageWiget(context: context),
          classesOfferWidget()
        ],
      ),
    ));
  }
}
