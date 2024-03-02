import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../admin_dashboard_screen/view/admin_dashboard_screen.dart';
import '../registration_screen/registration_widget.dart';
import '../registration_screen/view/registration_screen.dart';

class AdminLoginController extends GetxController {
  TextEditingController adminGmailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  signup() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: adminGmailControler.text,
        password: passwordControler.text,
      );
      print("signup page");
      print(credential);
      // await auth
      //     .collection("USER")
      //     .doc(mailController.text)
      //     .set({'email': mailController.text, 'username': userController.text});

      // await storage.write('email', credential.user?.email.toString());
      // await storage.write('isLogged', true);
      Get.snackbar('SignUp', 'SignUp Successfully');
      Get.offAll(AdminDashboardScreen());
      adminGmailControler.text = "";
      passwordControler.text = "";
    } catch (e) {
      Get.snackbar('Sign Up Error', ' UserName or Password incorrect');
      print("e snacbar");
    }
  }

  validation() {
    print("validation");
    if (adminGmailControler.text == "") {
      snackBar(msg: "Kindly Enter Your Gmail");
      return;
    } else if (passwordControler.text == "") {
      snackBar(msg: "Kindly Enter Your Password");
    }
    signup();

    print("signup pae");
  }
}
