import 'package:flutter/material.dart';
import 'package:test_project/widgets/celmeety_product_img_box.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CelmeetyProductImgBox(
        imgPath: "assets/img2.png",
          heroImgPath: "assets/img1.png",
          tag: "hero",
          duration: const Duration(milliseconds: 1000),
          curve: Curves.fastOutSlowIn,
          offset: Offset.zero,
          width: 300,
          height: 300),
    );
  }
}
