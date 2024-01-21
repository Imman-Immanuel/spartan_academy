import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/registration_screen/registration_controller.dart';

final RegistrationController = Get.put(RegistraionScreenController());

///common widet for registration and contact us screen
Widget leftRightBoxContainer({required Widget Colum}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200, minHeight: 600),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF2E0404).withOpacity(0.5),
                      // offset: Offset(6, 10),
                      blurRadius: 8.8,
                      spreadRadius: 2.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(13.0),
                  color: const Color(0xFF2E0404),
                ),
                child: const Column(
                  children: [],
                ),
              ),
            ),
          ),
          const SizedBox(width: 100),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200, minHeight: 600),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF2E0404).withOpacity(0.5),
                        // offset: Offset(6, 10),
                        blurRadius: 8.8,
                        spreadRadius: 2.0,
                      )
                    ],
                    color: Colors.white,
                    // color: Color(0xFF2E0404),
                    borderRadius: BorderRadius.circular(13.0)),
                child: Colum,
              ),
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 250),
    ],
  );
}

///common snackbar
snackBar({msg}) {
  return Get.snackbar("Error", msg,
      duration: const Duration(seconds: 2),
      maxWidth: 250,
      animationDuration: const Duration(milliseconds: 300),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.red,
      borderRadius: 5,
      backgroundColor: Colors.white,
      borderWidth: 2,
      // borderColor: Color(0xFF2E0404).withOpacity(0.5)
      borderColor: Colors.red.shade600);
}

///common Text field
Widget commonTextField(
    {required String label, required String hint, required controler}) {
  return SizedBox(
    width: 400,
    child: TextField(
        controller: controler,
        decoration: InputDecoration(
            fillColor: Colors.green,
            counterStyle: const TextStyle(color: Colors.white),
            label: Text(
              label,
            ),
            hintText: hint,
            focusColor: Colors.green),
        cursorColor: Colors.redAccent),
  );
}

Widget registrationScreen() {
  return leftRightBoxContainer(
      Colum: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: const Icon(
          Icons.account_box,
          size: 150,
        ),
      ),
      commonTextField(
          label: "Name",
          hint: "Enter Your Name",
          controler: RegistrationController.nameController),
      commonTextField(
          label: "Gmail",
          hint: "Enter Your Gmail",
          controler: RegistrationController.gmailController),
      commonTextField(
          label: "Dob",
          hint: "Enter Your Date Of Birth",
          controler: RegistrationController.dobController),
      commonTextField(
          label: "professional",
          hint: "Work/Study",
          controler: RegistrationController.workStudyController),
      commonTextField(
          label: "Address",
          hint: "Enter Your Address",
          controler: RegistrationController.addressController),
      commonTextField(
          label: "Phone Number",
          hint: "Enter Your Phone Number",
          controler: RegistrationController.phoneNumberController),
      sendButtonWidget(),
    ],
  ));
}

Widget sendButtonWidget() {
  return ElevatedButton(
    onPressed: () {
      RegistrationController.validation();
    },
    child: const SizedBox(
        width: 100,
        height: 40,
        child: Center(
            child: Text(
          "Send",
          style: TextStyle(fontSize: 20),
        ))),
  ).paddingAll(40);
}
