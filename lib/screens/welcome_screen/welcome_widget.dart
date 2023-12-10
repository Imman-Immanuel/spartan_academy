import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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
              gradient: const LinearGradient(
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
        scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
        enlargeCenterPage: true,
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

Widget welcomeWidget() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to SPARTAN TAEKWONDO MARTIAL ART ACADEMY",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "(Empowering Lives Through Taekwondo Excellence)",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
          )
        ],
      ),
    ],
  );
}

Widget aboutUsWidget() {
  return Center(
    child: Row(
      children: [
        const Expanded(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Spartan Taekwondo Martial Art Academy ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.justify,
              "Welcome to Spartan Taekwondo Academy, "
              "where the ancient art of Taekwondo meets modern excellence. "
              "Located in the vibrant city of Pondicherry, "
              "our academy is your gateway to a journey of self-discovery, "
              "self-discipline, and self-defense. "
              "Taekwondo is more than just a martial art. "
              "It's a way of life that empowers you to unleash your full potential, "
              "both physically and mentally.",
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            )
          ],
        ))),
        Expanded(
            child: Center(
                child: SizedBox(
                    height: 400,
                    child: Image.asset('assets/images/Spartan_logo.png'))))
      ],
    ),
  );
}

Widget missionWidget() {
  return Center(
    child: Row(
      children: [
        Expanded(
            child: Center(
                child: SizedBox(
                    height: 400,
                    child: Image.asset('assets/images/Spartan_logo.png')))),
        Expanded(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Our Mission",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.justify,
              '''Our mission is to empower individuals of all ages with the skills and mindset needed to overcome life's challenges. Through the teachings of Taekwondo, we aim to instill values such as respect, integrity, perseverance, and self-control. We believe that the principles learned on the mat extend far beyond, influencing every aspect of our students' lives.
              ''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            )
          ],
        ))),
      ],
    ),
  );
}

Widget faqWidget() {
  return Center(
    child: Row(
      children: [
        Expanded(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Why choose SPARTAN TAEKWONDO MARTIAL ART ACADEMY ?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.justify,
              '''Expert Instructors:\nOur experienced and certified instructors are passionate about Taekwondo and dedicated to helping you achieve your goals.
  ''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            ),
            Text(
              textAlign: TextAlign.justify,
              '''State-of-the-Art Facilities :\n Train in a safe and supportive environment equipped with top-notch facilities that cater to all skill levels.
  ''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            ),
            Text(
              textAlign: TextAlign.justify,
              '''Holistic Approach:\n We focus not only on physical fitness but also on mental and emotional well-being. Taekwondo is a holistic martial art that nurtures both body and mind.
  ''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            ),
            Text(
              textAlign: TextAlign.justify,
              '''Community Spirit:\n Join a vibrant community of like-minded individuals who support and encourage each other on their martial arts journey.
''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            ),
            Text(
              textAlign: TextAlign.justify,
              '''Martial Arts Benefits
Physical Fitness
Taekwondo is a dynamic martial art that enhances cardiovascular health,\nFlexibility, \nStrength, and coordination. Our classes are designed to provide a full-body workout, \nHelping you achieve and maintain optimal physical fitness.
''',
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  height: 1.5),
            ),
          ],
        ))),
        Expanded(
            child: Center(
                child: SizedBox(
                    height: 400,
                    child: Image.asset('assets/images/Spartan_logo.png')))),
      ],
    ),
  );
}
