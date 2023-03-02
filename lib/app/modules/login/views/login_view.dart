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
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 170,
              height: 170,
              child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_nrzmbfyy.json'),
              
            )
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(
            //     style: TextStyle(color: HexColor('#ff4654')),
            //     controller: controller.emailController,
            //     decoration: InputDecoration(
            //         hoverColor: HexColor('#ff4654'),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(10)),
            //             borderSide: BorderSide(color: HexColor('#ff4654'))),
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(10)),
            //             borderSide: BorderSide(color: HexColor('#ff4654'))),
            //         labelText: 'Email',
            //         labelStyle: TextStyle(color: HexColor('#ff4654')),
            //         hintText: 'Masukan Email'),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 15.0, right: 15.0, top: 15, bottom: 0),
            //   child: TextField(
            //     style: TextStyle(color: HexColor('#ff4654')),
            //     controller: controller.passwordController,
            //     obscureText: true,
            //     decoration: InputDecoration(
            //         hoverColor: HexColor('#ff4654'),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(10)),
            //             borderSide: BorderSide(color: HexColor('#ff4654'))),
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(10)),
            //             borderSide: BorderSide(color: HexColor('#ff4654'))),
            //         labelText: 'Password',
            //         labelStyle: TextStyle(color: HexColor('#ff4654')),
            //         hintText: 'Masukan Password'),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 50,
            //   width: 250,
            //   decoration: BoxDecoration(
            //       color: HexColor('#ff4654'),
            //       borderRadius: BorderRadius.circular(20)),
            //   child: TextButton(
            //       onPressed: () {
            //         controller.loginNow();
            //       },
            //       child: const Text(
            //         'Login',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 25,
            //         ),
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}
