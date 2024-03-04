import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spartan_academy/screens/registration_screen/registration_widget.dart';

List<Map<String, dynamic>> registrationList = [
  {
    "lable": "Name",
    "hint": "Please enter your Name",
    "keyboardType": TextInputType.name,
    "controller": TextEditingController,
  },
  {
    "lable": "Gmail",
    "hint": "Please enter your Gmail",
    "keyboardType": TextInputType.emailAddress,
    "controller": TextEditingController,
  },
  {
    "lable": "DOB",
    "hint": "Please enter your DOB",
    "keyboardType": TextInputType.datetime,
    "controller": TextEditingController,
  },
  {
    "lable": "Professional",
    "hint": "Please enter your WORK/STUDY",
    "keyboardType": TextInputType.text,
    "controller": TextEditingController,
  },
  {
    "lable": "Address",
    "hint": "Please enter your Address",
    "keyboardType": TextInputType.streetAddress,
    "controller": TextEditingController,
  },
  {
    "lable": "Phone No",
    "hint": "Please enter your PH.No",
    "keyboardType": TextInputType.number,
    "controller": TextEditingController,
  },
];

class RegistraionScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController workStudyController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  var loader = false.obs;
  FirebaseFirestore fs = FirebaseFirestore.instance;
  registration() async {
    loader.value = true;
    await Future.delayed(Duration(seconds: 3), () async {
      await fs.collection('Registration').doc(gmailController.text).set({
        "name": nameController.text,
        'gmail': gmailController.text,
        "dob": dobController.text,
        "ocupation": workStudyController.text,
        "phoneNo": phoneNumberController.text,
        "addres": addressController.text
      });
    });
    nameController.text = "";
    gmailController.text;
    dobController.text = "";
    workStudyController.text = "";
    phoneNumberController.text = "";
    addressController.text = "";
    loader.value = false;
    // print(taskData);
    print(fs);
  }

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
    registration();
  }
}
