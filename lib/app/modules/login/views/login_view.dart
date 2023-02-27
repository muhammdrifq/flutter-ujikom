import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.amberAccent)
                    ),
                    labelText: 'Email', 
                    hintText: 'Masukan Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: controller.passwordController,
                obscureText: true,
               decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.amberAccent)
                    ),
                    labelText: 'Password', 
                    hintText: 'Masukan Password'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    controller.loginNow();
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
