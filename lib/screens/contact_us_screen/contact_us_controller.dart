import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../registration_screen/registration_controller.dart';
import '../registration_screen/registration_widget.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNoController = TextEditingController();
TextEditingController messageController = TextEditingController();

List<Map<String, dynamic>> contactUsInputs = [
  {
    'label': 'Name',
    'hint': 'Enter your name',
    'controller': nameController,
    'textInputType': TextInputType.name,
    "maxLength": 30,
  },
  {
    'label': 'Gmail',
    'hint': 'Enter your Gmail',
    'controller': emailController,
    'textInputType': TextInputType.emailAddress,
    "maxLength": 30,
  },
  {
    'label': 'Phone No',
    'hint': 'Enter your Phone No.',
    'controller': phoneNoController,
    'textInputType': TextInputType.phone,
    "maxLength": 10,
  },
  {
    'label': 'Message',
    'hint': 'Enter your Message',
    'controller': messageController,
    'textInputType': TextInputType.text,
    "maxLength": 50,
  }
];
FirebaseFirestore fs = FirebaseFirestore.instance;
RegistraionScreenController rc = Get.put(RegistraionScreenController());
List contactUsIconLinksPath = [
  {"svg": 'assets/svg/phone.svg', "url": "tel:7010996304"},
  {"svg": 'assets/svg/whatsapp.svg', "url": "https://wa.me/7010996304"},
  {"svg": 'assets/svg/gmail.svg', "url": "mailto:solosathish7@gmail.com"},
  {
    "svg": 'assets/svg/instagram.svg',
    "url": "https://www.instagram.com/sathishmaruk"
  },
];
contacUs() async {
  rc.loader.value = true;
  await Future.delayed(const Duration(seconds: 3), () async {
    await fs.collection('ContacUs').doc(emailController.text).set({
      "name": nameController.text,
      'gmail': emailController.text,
      "phoneNo": phoneNoController.text,
      "addres": messageController.text
    });
  });
  nameController.text = "";
  emailController.text = "";
  phoneNoController.text = "";
  messageController.text = "";
  rc.loader.value = false;
}

contactUsValidation() {
  if (nameController.text == "") {
    snackBar(msg: "Kindly Enter Your Name");
    return;
  } else if (emailController.text == "") {
    snackBar(msg: "Kindly Enter Your Gmail");
  } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)) {
    snackBar(msg: "Please Enter Valid Gmail Address");
    return;
  } else if (phoneNoController.text == "") {
    snackBar(msg: "Kindly Enter Your Phone Number");
    return;
  } else if (!RegExp(r"^[6-9][0-9]{9}$").hasMatch(phoneNoController.text)) {
    return snackBar(
        msg:
            "Please enter a valid 10-digit mobile number starting with 6, 7, 8, or 9");
  } else if (messageController.text == "") {
    snackBar(msg: "Kindly Enter Your Message");
    return;
  } else {
    contacUs();
  }
}
