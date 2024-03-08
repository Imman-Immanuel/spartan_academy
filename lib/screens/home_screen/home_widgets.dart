import 'package:flutter/material.dart';

Widget homeMenuWidget(
    {required String menuName, onPressFunc, bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: TextButton(
        onPressed: onPressFunc,
        child: Text(
          menuName,
          style: TextStyle(
              fontSize: isSelected ? 20 : 18,
              color: isSelected ? Colors.red : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : null),
        )),
  );
}

Widget homeTopBar() {
  return Stack(
    children: [
      // Your main content goes here
      Container(
        color: Colors.white, // Change this to your main background color
        child: const Center(
          child: Text(
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
            child: Text(
              'Fixed Container at the Top',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}
