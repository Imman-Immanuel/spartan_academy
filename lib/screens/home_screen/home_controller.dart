import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/admin_login_screen/view/admin_login_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen/view/contact_us_screen.dart';
import 'package:spartan_academy/screens/members_screen/view/members_screen.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';

import '../registration_screen/view/registration_screen.dart';

class HomeController extends GetxController {
  List homeMenuList = [
    'Home',
    'Members',
    'Contact Us',
    'Registration',
    'Admin Login',
    // 'Admin Dashboard'
  ];
  List iconList = [
    Icons.home,
    Icons.group,
    Icons.call,
    Icons.note_alt_rounded,
    Icons.admin_panel_settings,
  ];

  List screensList = [
    // Get.offAll(WelcomeScreen()),
    // Get.offAll(MembersScreen()),
    // Get.offAll(WelcomeScreen()),
    // Get.offAll(ContactUsScreen()),
    // Get.offAll(RegistrationScreen()),
    // Get.offAll(AdminDashboardScreen()),
    const WelcomeScreen(),
    const MembersScreen(),
    const ContactUsScreen(),
    const RegistrationScreen(),
    AdminLoginScreen(),
    // const AdminDashboardScreen()
  ];

  var currentScreenSelectionIndex = 0.obs;

  changeCurrentScreenSelectionIndex(int newIndex) =>
      currentScreenSelectionIndex.value = newIndex;
}
