import 'package:flutter/material.dart';

Widget inputBoxWidget(String labelText,
    {bool obscureText = false, TextInputType? textInputType}) {
  return TextFormField(
    obscureText: obscureText,
    keyboardType: textInputType,
    decoration: InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(),
    ),
  );
}

Widget buttonWidget(String text, void Function()? onPressFunc,
    [Color? foregroundColor, Color? backgroundColor]) {
  return ElevatedButton(
    onPressed: onPressFunc,
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    child: Text(
      text,
      style: TextStyle(fontSize: 18),
    ),
  );
}

Widget headingText1(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
  );
}
