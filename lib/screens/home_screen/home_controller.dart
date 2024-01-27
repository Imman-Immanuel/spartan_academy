import 'package:get/get.dart';
import 'package:spartan_academy/screens/admin_dashboard_screen/view/admin_dashboard_screen.dart';
import 'package:spartan_academy/screens/admin_login_screen/view/admin_login_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen/view/contact_us_screen.dart';
import 'package:spartan_academy/screens/members_screen/view/members_screen.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';

import '../registration_screen/view/registration_screen.dart';

class HomeController extends GetxController {
  List homeMenuList = [
    'Home',
    'Members',
    'Contact',
    'Registration',
    'Admin Login',
    'Admin Dashboard'
  ];

  List screensList = [
    const WelcomeScreen(),
    const MembersScreen(),
    const ContactUsScreen(),
    const RegistrationScreen(),
    const AdminLoginScreen(),
    const AdminDashboardScreen()
  ];

  var currentScreenSelectionIndex = 0.obs;

  changeCurrentScreenSelectionIndex(int newIndex) =>
      currentScreenSelectionIndex.value = newIndex;
}
