import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../welcome_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          achievementsCarouselWidget(),
          welcomeWidget(),
          aboutUsWidget(),
          missionWidget(),
          faqWidget()
        ],
      ).paddingAll(25),
    );
  }
}
