import 'package:flutter/material.dart';

import 'screens/home_screen/view/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.grey),
  ));
}
