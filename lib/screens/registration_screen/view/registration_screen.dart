import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spartan_academy/global/global_widgets.dart';

import '../registration_widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/contactUsbg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            // make sure we apply clip it properly
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.center,
                // color: Colors.grey.withOpacity(0.1),
                child: Column(
                  children: [
                    headerWidget(),
                    registrationScreen(context: context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
