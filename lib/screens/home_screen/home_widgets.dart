import 'package:flutter/material.dart';

Widget homeMenuWidget(String menuName, void Function()? onPressFunc,
    [bool isSelected = false]) {
  return TextButton(
      onPressed: onPressFunc,
      child: Text(
        menuName,
        style: TextStyle(
            fontSize: isSelected ? 20 : 18,
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.bold : null),
      ));
}
