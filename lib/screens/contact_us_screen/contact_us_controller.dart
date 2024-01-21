import 'package:flutter/cupertino.dart';

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
    'label': 'Email',
    'hint': 'Enter your email',
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
  'svg/phone.svg',
  'svg/whatsapp.svg',
  'svg/gmail.svg',
  'svg/instagram.svg'
];
