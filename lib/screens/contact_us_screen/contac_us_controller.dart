import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spartan_academy/screens/registration_screen/registration_widget.dart';

class ContactUsScreenController extends GetxController {
  TextEditingController nameConroller = TextEditingController();
  TextEditingController gmailConroller = TextEditingController();
  TextEditingController phoneNoConroller = TextEditingController();
  TextEditingController messageConroller = TextEditingController();

  validation() {
    if (nameConroller.text == "") {
      snackBar(msg: "Kindly Enter your Name");
      return;
    } else if (phoneNoConroller.text == "") {
      snackBar(msg: "Kindly Enter your Phone Number");
      return;
    } else if (messageConroller.text == "") {
      snackBar(msg: "Kindly Enter your Message ");
      return;
    }
  }
}
