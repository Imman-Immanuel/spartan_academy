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
          welcomeSplitContainerWidget1(
              imgPath: 'images/Spartan_logo.png',
              heading: welcomeContents[0]['heading']!,
              content: welcomeContents[0]['content']!,
              context: context),
          welcomeSplitContainerWidget1(
              imgPath: 'images/Spartan_logo.png',
              heading: welcomeContents[1]['heading']!,
              content: welcomeContents[1]['content']!,
              context: context),
          welcomeSplitContainerWidget1(
              imgPath: 'images/Spartan_logo.png',
              heading: welcomeContents[2]['heading']!,
              content: welcomeContents[2]['content']!,
              context: context),
          welcomeSplitContainerWidget1(
              imgPath: 'images/Spartan_logo.png',
              heading: welcomeContents[3]['heading']!,
              content: welcomeContents[3]['content']!,
              context: context),
        ],
      ),
    );
  }
}
