import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'admin_dashboard_widgets.dart';

class AdminDashboardController extends GetxController {
  List<String> menuList = ['Students', 'Academy', 'Certificates'];
  List<Widget> contentList = [
    studentsContentWidget(),
    academyContentWidget(),
    certificatesContentWidget()
  ];

  var currentMenuSelectionIndex = 0.obs;
  var currentContentSelectionIndex = 0.obs;

  var currentCertificateView = createCertificatesWidget().obs;

  changeCurrentMenuSelectionIndex(int newIndex) =>
      currentMenuSelectionIndex.value = newIndex;

  changeCurrentContentSelectionIndex(int newIndex) =>
      currentContentSelectionIndex.value = newIndex;
}
