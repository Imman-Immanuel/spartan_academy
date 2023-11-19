import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/home_screen/home_widgets.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:carousel_slider/carousel_controller.dart';

import '../members_widgets.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/Members_Screen_Background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: SizedBox(
          height: 370,
          width: double.infinity,
          child: CarouselSlider(
              items: [
                memberWidget(
                    'images/Sample_user.png', 'Nehru', 'President', 'MLA'),
                memberWidget('images/Sample_user.png', 'Keerthi Varman',
                    'Vice President', 'Traffic Inspector'),
                memberWidget('images/Sample_user.png', 'Hema Sankar',
                    'General Secretary'),
                memberWidget(
                  'images/Sample_user.png',
                  'Sathish Kumar',
                  'Joint Secretary',
                ),
                memberWidget(
                  'images/Imman_pic.jpg',
                  'Immanuel S',
                  'Treasurer',
                ),
                memberWidget(
                  'images/Sample_user.png',
                  'Siva Kumar',
                  'E.C Member',
                ),
                memberWidget(
                  'images/Sample_user.png',
                  'Vishnu Balan',
                  'E.C Member',
                ),
              ],
              options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  // enlargeCenterPage: true,
                  // enlargeFactor: .4,
                  // viewportFraction: .3,
                  autoPlay: true)),
        ),
      ),
    );
  }
}
