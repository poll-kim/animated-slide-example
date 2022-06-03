import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/widgets/celmeety_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CelmeetySplashScreen(
      size: 48.0,
      mill: 900,
      interval: 800,
      curve: Curves.fastOutSlowIn,
      navigator: () {
        Get.offAndToNamed('/');
      },
      imgPath: "assets/splash_icon.png",
    );
  }
}
