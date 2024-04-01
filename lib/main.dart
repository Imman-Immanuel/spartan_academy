import 'package:flutter/material.dart';
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
