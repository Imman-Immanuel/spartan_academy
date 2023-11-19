import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget achievementsCarouselWidget() {
  return Container(
    child: CarouselSlider(
      items: [
        Container(
          height: 400,
          width: 2050,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(2, 5),
                  colors: [Colors.black, Colors.red])),
          child: Image.asset(
            "assets/images/Imman_pic.jpg",
            height: 60,
            width: 60,
          ),
          // child: Text("Add Photos"),
        )
      ],
      carouselController: CarouselController(),
      options: CarouselOptions(
        enlargeCenterPage: false,
        viewportFraction: 0.9,
        aspectRatio: 18 / 8,
        initialPage: 2,
        autoPlay: false,
        enlargeFactor: 0.4,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
      ),
    ),
  );
}
