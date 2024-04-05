import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spartan_academy/screens/contact_us_screen/contact_us_controller.dart';
import 'package:spartan_academy/screens/registration_screen/registration_controller.dart';

final registrationController = Get.put(RegistraionScreenController());

///common date picker
Widget datePicker() {
  return SizedBox(
    width: 400,
    child: TextField(
      autocorrect: true,
      controller: registrationController.dobController,
      focusNode: FocusNode(),
      readOnly: true,
      decoration: const InputDecoration(
          fillColor: Colors.green,
          counterStyle: TextStyle(color: Colors.white),
          label: SelectableText(
            "Date of Birth",
          ),
          hintText: "Select Your Date",
          focusColor: Colors.green),
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: Get.context!,
          confirmText: "Done",
          initialDate: DateTime(2000),
          firstDate: DateTime(1950),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
          registrationController.dobController.text =
              formattedDate.toString().split(" ")[0];
        }
      },
    ),
  );
}

///common widet for registration and contact us screen
Widget leftRightBoxContainer({
  required Widget colum,
  required String imgPath,
  required BuildContext context,
}) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (screenWidth > 1200) ...[
            Container(
              height: 600,
              width: screenWidth < 600 ? 350 : 500,
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      imgPath,
                      width: 500,
                      height: 400,
                    )
                  ]),
            ),
            const SizedBox(width: 50),
          ],

          // Right box - web view  Widget
          screenWidth > 600
              ? Container(
                  width: screenWidth < 600 ? 350 : 500,
                  height: 600,

                  // w 350,
                  // h650
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
                  child: colum.paddingSymmetric(horizontal: 30),
                )

              // Right box - Mobile view  Widget
              : Expanded(
                  child: Container(
                    width: screenWidth < 600 ? 350 : 500,
                    // height: screenWidth > 1200 ? 600 : 700,

                    // w 350,
                    // h650
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
                    child: colum.paddingSymmetric(horizontal: 20),
                  ).paddingSymmetric(horizontal: 30),
                )
        ],
      ).paddingSymmetric(vertical: 30),
    ],
  );
}

///common snackbar
snackBar({msg}) {
  return Get.snackbar("Error", msg,
      duration: const Duration(seconds: 2),
      maxWidth: 250,
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(vertical: 15),
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
    {required String label,
    required String hint,
    required controller,
    maxlength}) {
  return SizedBox(
    width: 400,
    child: TextField(
        maxLength: maxlength,
        keyboardType: null,
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.green,
            counterStyle: const TextStyle(color: Colors.white),
            label: SelectableText(
              label,
            ),
            hintText: hint,
            focusColor: Colors.green),
        cursorColor: Colors.redAccent),
  );
}

Widget registrationScreen({context}) {
  return leftRightBoxContainer(
      context: context,
      imgPath: "assets/images/Spartan_logo.png",
      colum: SingleChildScrollView(
        child: Column(
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
                // maxLegth: 10,
                label: "Name",
                hint: "Enter Your Name",
                controller: registrationController.nameController),
            commonTextField(
                // maxLegth: 10,
                label: "Gmail",
                hint: "Enter Your Gmail",
                controller: registrationController.gmailController),
            datePicker(),
            commonTextField(
                // maxLegth: 10,
                label: "professional",
                hint: "Work/Study",
                controller: registrationController.workStudyController),
            commonTextField(
                // maxLegth: 10,
                label: "Address",
                hint: "Enter Your Address",
                controller: registrationController.addressController),
            commonTextField(
                maxlength: 10,
                label: "Phone Number",
                hint: "Enter Your Phone Number",
                controller: registrationController.phoneNumberController),
            sendButtonWidget(ontab: () {
              registrationController.validation();
            }),
          ],
        ),
      ));
}

Widget sendButtonWidget({ontab}) {
  double screenWidth = MediaQuery.of(Get.context!).size.width;

  return Obx(
    () => ElevatedButton(
      onPressed: ontab,
      child: SizedBox(
          width: 100,
          height: 40,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Send",
                style: TextStyle(fontSize: screenWidth < 575 ? 18 : 20),
              ),
              if (rc.loader.value) ...[
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.red, // Set the color
                    strokeWidth: 3.0,
                  ),
                ),
              ]
            ],
          ))),
    ).paddingOnly(bottom: 25, top: 5),
  );
}
