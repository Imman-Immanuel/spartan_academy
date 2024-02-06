import 'package:flutter/cupertino.dart';
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
    'textInputType': TextInputType.name
  },
  {
    'label': 'Gmail',
    'hint': 'Enter your Gmail',
    'controller': emailController,
    'textInputType': TextInputType.emailAddress
  },
  {
    'label': 'Phone No.',
    'hint': 'Enter your Phone No.',
    'controller': phoneNoController,
    'textInputType': TextInputType.phone
  },
  {
    'label': 'Message',
    'hint': 'Enter your Message',
    'controller': messageController,
    'textInputType': TextInputType.text
  }
];

List contactUsIconLinksPath = [
  {"svg": 'svg/phone.svg', "url": "tel:7010996304"},
  {"svg": 'svg/whatsapp.svg', "url": "https://wa.me/7010996304"},
  {"svg": 'svg/gmail.svg', "url": "mailto:solosathish7@gmail.com"},
  {"svg": 'svg/instagram.svg', "url": "https://www.instagram.com/sathishmaruk"},
];

contactUsValidation() {
  if (nameController.text == "") {
    snackBar(msg: "Kindly Enter Your Name");
    return;
  } else if (emailController.text == "") {
    snackBar(msg: "Kindly Enter Your Gmail");
  } else if (phoneNoController.text == "") {
    snackBar(msg: "Kindly Enter Your Phone Number");
    return;
  } else if (messageController.text == "") {
    snackBar(msg: "Kindly Enter Your Message");
    return;
  }
}
