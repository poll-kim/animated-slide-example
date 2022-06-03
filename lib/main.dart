import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/first_screen.dart';
import 'package:test_project/second_screen.dart';
import 'package:test_project/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/splash',
    getPages: [
      GetPage(
        name: '/',
        page: () => const FirstScreen(),
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 2000),
      ),
      GetPage(name: '/second', page: () => const SecondScreen()),
      GetPage(name: '/splash', page: () => const SplashScreen()),
    ],
  ));
}
