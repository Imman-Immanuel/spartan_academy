import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/lading_screen/landing_Screen_widgets.dart';
import 'screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomeScreen(),
    // home: Landing_screen_widget(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.grey),
  ));
}
