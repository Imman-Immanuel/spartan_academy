import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../members_widgets.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double currentScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Members_Screen_Background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CarouselSlider(
              items: [
                memberWidget(
                  'assets/images/Sample_user.png',
                  'Nehru',
                  'President',
                  'MLA',
                ),
                memberWidget('assets/images/Sample_user.png', 'Keerthi Varman',
                    'Vice President', 'Traffic Inspector'),
                memberWidget('assets/images/Sample_user.png', 'Hema Sankar',
                    'General Secretary'),
                memberWidget(
                  'assets/images/sathish.jpg',
                  'Sathish Kumar',
                  'Joint Secretary',
                ),
                memberWidget(
                  'assets/images/Imman_pic.jpg',
                  'Immanuel S',
                  'Treasurer',
                ),
                memberWidget(
                  'assets/images/Sample_user.png',
                  'Siva Kumar',
                  'E.C Member',
                ),
                memberWidget(
                  'assets/images/Sample_user.png',
                  'Vishnu Balan',
                  'E.C Member',
                ),
              ],
              options: CarouselOptions(
                  height: currentScreenWidth < 575 ? 290 : 370,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  viewportFraction: 0.9,
                  autoPlay: false)),
        ),
      ),
    );
  }
}
