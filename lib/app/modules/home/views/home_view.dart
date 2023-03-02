import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:lottie/lottie.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: HexColor('#0F1822'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Image.network(
                'https://cdn.dribbble.com/users/2348/screenshots/10696082/media/4a24583ea649f9df1415775a37c84ae5.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 170,
              height: 170,
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_nrzmbfyy.json'),
            )
          ],
        ),
      ),
    );
  }
}
