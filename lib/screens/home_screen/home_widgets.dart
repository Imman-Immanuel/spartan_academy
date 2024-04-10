import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/global/global_widgets.dart';

Widget homeMenuWidget(
    {required String menuName, onPressFunc, required String indexed}) {
  return Obx(
    () => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
          onPressed: onPressFunc,
          child: Text(
            menuName,
            style: TextStyle(
                fontSize: indexed == hc.selectedButton.value ? 24 : 18,
                color: indexed == hc.selectedButton.value
                    ? Colors.red
                    : Colors.white,
                fontWeight: indexed == hc.selectedButton.value
                    ? FontWeight.bold
                    : FontWeight.normal),
          )),
    ),
  );
}

Widget mobileHomeMenuWidget(
    {required String menuName,
    onPressFunc,
    bool isSelected = false,
    required IconData icons}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icons,
          color: isSelected ? Colors.red : Colors.white,
          size: isSelected ? 26 : 23,
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: onPressFunc,
            child: Text(
              menuName,
              style: TextStyle(
                  fontSize: isSelected ? 19 : 16,
                  color: isSelected ? Colors.red : Colors.white,
                  fontWeight: isSelected ? FontWeight.bold : null),
            )),
      ],
    ).paddingOnly(top: 5, bottom: 5),
  );
}

Widget homeTopBar() {
  return Stack(
    children: [
      // Your main content goes here
      Container(
        color: Colors.white, // Change this to your main background color
        child: const Center(
          child: SelectableText(
            'Your main content goes here',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      // Fixed container at the top
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          color: Colors.blue, // Change this to your desired container color
          height: 50, // Change this to your desired container height
          child: const Center(
            child: SelectableText(
              'Fixed Container at the Top',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}
