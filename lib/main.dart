import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screens/home_screen/view/home_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(GetMaterialApp(
    title: "Spartan Taekwondo Academy",
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.grey),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool zoomedOut = false;
  bool fadeIn = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.off(HomeScreen(),
          transition: Transition.fadeIn, duration: Duration(milliseconds: 600));

      setState(() {
        zoomedOut = true;
        fadeIn = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Center(
        child: AnimatedContainer(
            height: zoomedOut ? 200 : MediaQuery.of(context).size.height,
            width: zoomedOut ? 200 : MediaQuery.of(context).size.width,
            duration: Duration(seconds: 3),
            curve: Curves.easeIn,
            child: Image.asset(
              "assets/images/splashScreenWeb.png",
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
