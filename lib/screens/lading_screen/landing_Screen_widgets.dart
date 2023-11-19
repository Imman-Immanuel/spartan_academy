import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/landing_carousel_widget.dart';

class Landing_screen_widget extends StatefulWidget {
  const Landing_screen_widget({super.key});

  @override
  State<Landing_screen_widget> createState() => _Landing_screen_widgetState();
}

class _Landing_screen_widgetState extends State<Landing_screen_widget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [landing_screen_carousel_()],
        ),
      ),
    );
  }
}
