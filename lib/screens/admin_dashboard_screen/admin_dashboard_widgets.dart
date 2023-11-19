import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'admin_dashboard_controller.dart';

final AdminDashboardController _adc = Get.find<AdminDashboardController>();

Widget adminDashboardButtonWidget(String text, void Function()? onPressFunc) {
  return ElevatedButton(
    onPressed: onPressFunc,
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        backgroundColor: Color(0xFF1B1B1A),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    child: Text(
      text,
      style: TextStyle(fontSize: 18),
    ),
  );
}

Widget adminDashboardIconButtonWidget(
    IconData myIcon, void Function()? onPressFunc) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1B1B1A),
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
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: isSelected ? Color(0xFF1B1B1A) : Colors.white,
      ),
      child: Text(
        name,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 20),
      ));
}

Widget studentsContentWidget() {
  return Center(
    child: Text('Students Content here. Coming soon !'),
  );
}

Widget academyContentWidget() {
  return Center(
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
            SizedBox(
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
      Text(
        'Create Certificate',
        style: TextStyle(fontSize: 25),
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Full Name',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Level',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(
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
      Text(
        'View Certificate',
        style: TextStyle(fontSize: 25),
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Certificate ID',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(
        height: 40,
      ),
      adminDashboardIconButtonWidget(Icons.arrow_right_alt_rounded, () {})
    ],
  );
}
