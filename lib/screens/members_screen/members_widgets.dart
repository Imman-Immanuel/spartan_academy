import 'package:flutter/material.dart';

Widget memberWidget(String imgPath, String name, String designation,
    [String? designation2]) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black87,
          radius: 115,
          child: CircleAvatar(
            radius: 110,
            backgroundImage: AssetImage(imgPath),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            if (designation2 != null) ...[
              const SizedBox(
                height: 5,
              ),
              Text(
                designation2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
            SizedBox(
              height: 5,
            ),
            Text(
              designation,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
