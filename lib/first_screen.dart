import 'package:flutter/material.dart';
import 'package:test_project/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (_, __, ___) => const SecondScreen()),
            );
          },
          child: Hero(
            tag: 'hero',
            child: Container(
              width: 325,
              height: 499,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/img1.png',
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
