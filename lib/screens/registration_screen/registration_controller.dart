import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spartan_academy/screens/registration_screen/registration_widget.dart';

class RegistraionScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController workStudyController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  // void _showSnackbar(String message) {
  //   final snackBar = SnackBar(
  //     content: Text(message),
  //     duration: Duration(seconds: 2),
  //   );
  //   ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  // }
  validation() {
    // print("validation");
    if (nameController.text == "") {
      snackBar(msg: "Kindly Enter Your Name");
      return;
    } else if (gmailController.text == "") {
      snackBar(msg: "Kindly Enter Your Gmail");
    } else if (dobController.text == "") {
      snackBar(msg: "Kindly Enter Your Date Of birth");
      return;
    } else if (workStudyController.text == "") {
      snackBar(msg: "Kindly Enter Your Professional");
      return;
    } else if (addressController.text == "") {
      snackBar(msg: "Kindly Enter Your Adress");
      return;
    } else if (phoneNumberController.text == "") {
      snackBar(msg: "Kindly Enter Your Phone Number");
      return;
    }
  }
}
