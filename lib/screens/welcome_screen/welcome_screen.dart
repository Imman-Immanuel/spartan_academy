import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SPARTAN Taekwondo Academy ",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                Text(
                  "Jechitom Mara....  ",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
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
            ),
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
}
