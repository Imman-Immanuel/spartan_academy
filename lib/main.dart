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
    home: HomeScreen(),
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
    Timer(Duration(seconds: 3), () {
      Get.to(HomeScreen(),
          transition: Transition.noTransition, duration: Duration(seconds: 2));

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // You can replace this with your splash screen image
            Opacity(
              opacity: fadeIn ? 0.0 : 1,
              child: AnimatedContainer(
                  height: zoomedOut ? 200 : MediaQuery.of(context).size.height,
                  width: zoomedOut ? 200 : MediaQuery.of(context).size.width,
                  duration: Duration(seconds: 3),
                  curve: Curves.bounceInOut,
                  child: Image.asset(
                    "assets/images/splashScreenWeb.png",
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
