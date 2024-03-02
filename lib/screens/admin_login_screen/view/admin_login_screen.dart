import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/global/global_widgets.dart';

import '../admin_login_controler.dart';

class AdminLoginScreen extends StatelessWidget {
  AdminLoginScreen({super.key});

  final ac = Get.put(AdminLoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/Admin_Login_Background.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "ADMIN LOGIN",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 350,
                child:
                    inputBoxWidget('Gmail', controler: ac.adminGmailControler)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                child: inputBoxWidget('Password',
                    controler: ac.passwordControler, obscureText: true)),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  ac.validation();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15)),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
