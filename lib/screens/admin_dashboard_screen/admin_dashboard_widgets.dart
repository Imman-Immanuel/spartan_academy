import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'admin_dashboard_controller.dart';

final AdminDashboardController _adc = Get.find<AdminDashboardController>();

Widget adminDashboardButtonWidget(String text, void Function()? onPressFunc) {
  return ElevatedButton(
    onPressed: onPressFunc,
    style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        backgroundColor: const Color(0xFF1B1B1A),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    child: Text(
      text,
      style: const TextStyle(fontSize: 18),
    ),
  );
}

Widget adminDashboardIconButtonWidget(
    IconData myIcon, void Function()? onPressFunc) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1B1B1A),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
      child: Icon(
        myIcon,
        size: 40,
      ));
}

Widget menuItemWidget(String name, [bool isSelected = false]) {
  return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        color: isSelected ? const Color(0xFF1B1B1A) : Colors.white,
      ),
      child: Text(
        name,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 20),
      ));
}

Widget studentsContentWidget() {
  return const Center(
    child: Text('Students Content here. Coming soon !'),
  );
}

Widget academyContentWidget() {
  return const Center(
    child: Text('Academy Content here. Coming soon !'),
  );
}

Widget certificatesContentWidget() {
  return Center(
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            adminDashboardButtonWidget('Create Certificates', () {
              _adc.currentCertificateView.value = createCertificatesWidget();
            }),
            const SizedBox(
              height: 15,
            ),
            adminDashboardButtonWidget('View Certificates', () {
              _adc.currentCertificateView.value = viewCertificatesWidget();
            }),
          ],
        ),
        Expanded(
          child: Center(
            child: Obx(() => _adc.currentCertificateView.value),
          ),
        )
      ],
    ),
  );
}

Widget createCertificatesWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'Create Certificate',
        style: TextStyle(fontSize: 25),
      ),
      const SizedBox(
        height: 40,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Full Name',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Level',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      adminDashboardIconButtonWidget(Icons.arrow_right_alt_rounded, () {})
    ],
  );
}

Widget viewCertificatesWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'View Certificate',
        style: TextStyle(fontSize: 25),
      ),
      const SizedBox(
        height: 40,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Certificate ID',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      adminDashboardIconButtonWidget(Icons.arrow_right_alt_rounded, () {})
    ],
  );
}
