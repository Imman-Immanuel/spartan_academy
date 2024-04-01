import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget memberWidget(String imgPath, String name, String designation,
    [String? designation2]) {
  double screenWidth = MediaQuery.of(Get.context!).size.width;
  return screenWidth > 575
      ? Container(
          // color: Colors  .green
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
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
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
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      designation,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      : Container(
          // color: Colors.green,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black87,
                radius: 95,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(imgPath),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    if (designation2 != null) ...[
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        designation2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      designation,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
}
