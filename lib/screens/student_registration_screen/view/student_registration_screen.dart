// import 'package:flutter/material.dart';
// import 'dart:ui';
//
// import 'package:spartan_academy/global/global_widgets.dart';
//
// class StudentRegistrationScreen extends StatelessWidget {
//   const StudentRegistrationScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // Background image with blur effect
//           Image.asset(
//             "images/Registration_Background.jpg",
//             fit: BoxFit.cover,
//           ),
//           // Blurred overlay
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//             child: Container(
//               color: Colors.black.withOpacity(0.3),
//             ),
//           ),
//           // Centered container with heading
//           Center(
//             child: Container(
//               width: 350,
//               height: 400,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Student Registration',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.red,
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   // Two input boxes (Name, Mobile No)
//                   inputBoxWidget('Name', textInputType: TextInputType.number,controler: ),
//                   const SizedBox(height: 20),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: 'Mobile No',
//                       border: OutlineInputBorder(),
//                     ),
//                     keyboardType: TextInputType.phone,
//                   ),
//                   const SizedBox(height: 30),
//                   // Register button with glossy effect
//                   buttonWidget('REGISTER', () {}, Colors.white, Colors.red)
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
