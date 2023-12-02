import 'package:flutter/material.dart';

Widget contactItemWidget(IconData icon, String title, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            size: 40,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                content,
                style:
                    const TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget contactUsTitleWidget() {
  return const Text(
    'Contact Us',
    style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        color: Colors.white),
  );
}

Widget contactUsContentWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      contactUsTitleWidget(),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: SizedBox(
          width: 800,
          child: Text(
              'Explore our class schedules, upcoming events, and testimonials '
              'from our students. Transform your life with the power of Taekwondo '
              'and embark on a path of continuous growth and success.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white, height: 1.5)),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      contactUsItemsWidget()
    ],
  );
}

Widget contactUsItemsWidget() {
  return Column(
    children: [
      contactItemWidget(Icons.location_on, 'Address',
          'No.2, Rainbow Street, Victory Nager, Nellithope, Puducherry - 605 005.'),
      contactItemWidget(Icons.phone, 'Phone', '+91 95854 42524 / 87548 25748'),
      contactItemWidget(Icons.email, 'Email', 'spartanacademy.py@gmail.com'),
    ],
  );
}
