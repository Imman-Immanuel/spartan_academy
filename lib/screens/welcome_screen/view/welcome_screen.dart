import 'package:flutter/material.dart';
import 'package:spartan_academy/globals.dart';
import '../welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [homePageWiget(context: context), classesOfferWidget()],
    ));
  }
}
