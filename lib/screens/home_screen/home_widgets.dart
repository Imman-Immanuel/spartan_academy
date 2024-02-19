import 'package:flutter/material.dart';

Widget homeMenuWidget(String menuName, onPressFunc, [bool isSelected = false]) {
  return TextButton(
      onPressed: onPressFunc,
      child: Text(
        menuName,
        style: TextStyle(
            fontSize: isSelected ? 20 : 18,
            color: isSelected ? Colors.red : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : null),
      ));
}
