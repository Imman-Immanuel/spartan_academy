import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spartan_academy/screens/home_screen/home_controller.dart';
import 'package:spartan_academy/screens/welcome_screen/view/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController hc = Get.put(HomeController());
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onHorizontalDragEnd: (s) {
          print("runtypetime ${s.velocity.pixelsPerSecond.dx.runtimeType}");
          double dragedDouble = s.velocity.pixelsPerSecond.dx;
          hc.isDraged.value = dragedDouble;
          print(" draged value ${hc.isDraged}");
        },
        child: WelcomeScreen(),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(top: 0),
// child: hc.screensList[hc.currentScreenSelectionIndex.value],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Container(
// color: Colors.transparent,
// height: 60,
// child: screenWidth < 575
// ? Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(),
// GestureDetector(
// onHorizontalDragEnd: (details) {
// if (details.primaryVelocity! > 0) {
// Navigator.of(context).pop();
// } else if (details.primaryVelocity! < 0) {
// Navigator.of(context)
//     .pop(); // Close the dialog
// } // Close the dialog when swiping horizontally
// },
// onTap: () {
// showGeneralDialog(
// transitionDuration:
// Duration(milliseconds: 350),
// context: context,
// pageBuilder: (ctx, a1, a2) {
// return Text("ss");
// },
// transitionBuilder:
// (ctx, a1, a2, child) {
// return Transform.translate(
// // transformHitTests: true,
// filterQuality:
// FilterQuality.medium,
// offset: Offset(0.30, 0.15),
// child: Stack(
// children: [
// Container(
// width: double.infinity,
// height: double.infinity,
// decoration: BoxDecoration(
// color: Colors.transparent
//     .withOpacity(0.5),
// ),
// child: BackdropFilter(
// filter: ImageFilter.blur(
// sigmaX: 8.0,
// sigmaY: 8.0),
// child: Container(
// color:
// Colors.transparent,
// ),
// ),
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.end,
// children: [
// Align(
// alignment:
// Alignment.topLeft,
// child: Container(
// color: Colors.black45,
// height:
// MediaQuery.sizeOf(
// context)
//     .height,
// width:
// MediaQuery.sizeOf(
// context)
//     .width *
// 0.7,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment
//     .center,
// children: [
// const SizedBox(
// height: 20,
// ),
// Column(
// children: [
// Container(
// // margin:
// //     const EdgeInsets
// //         .only(
// //         top:
// //             10),
// height: 110,
// width: 110,
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.circular(60),
// image: const DecorationImage(
// fit: BoxFit.fill,
// image: AssetImage("assets/images/background.jpeg"),
// )),
// ),
// ],
// ),
// const SizedBox(
// height: 20,
// ),
// const Divider(
// color: Colors
//     .white,
// ),
// const SizedBox(
// height: 20,
// ),
// Column(
// crossAxisAlignment:
// CrossAxisAlignment
//     .start,
// children: List.generate(
// hc.homeMenuList.length,
// (index) => mobileHomeMenuWidget(
// icons: hc.iconList[index],
// menuName: hc.homeMenuList[index],
// onPressFunc: () {
// hc.currentScreenSelectionIndex.value =
// index;
// Navigator.pop(
// context);
// },
// isSelected: index == hc.currentScreenSelectionIndex.value ? true : false)),
// ).paddingOnly(
// left: 10)
// ],
// ),
// ),
// ),
// ],
// ),
// ],
// ));
// });
// },
// child: Icon(
// Icons.menu_sharp,
// color: Colors.red,
// ),
// ),
// ],
// ).paddingOnly(right: 10)
//     : Container()),
// ],
// ),
