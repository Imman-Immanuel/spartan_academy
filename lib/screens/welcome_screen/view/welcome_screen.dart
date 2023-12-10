import 'dart:js_util';

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
          const SizedBox(height: 80),
          aboutUsWidget(),
          const SizedBox(height: 30),
          missionWidget(),
          const SizedBox(height: 30),
          faqWidget()
        ],
      ).paddingAll(25),
    );
  }
}
