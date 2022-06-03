import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Offset offset = Offset.zero;
  final double _height = 500;
  final int _inputDuration = 1000;

  void _slideUp() {
    setState(() => offset -= const Offset(0, 1));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: _inputDuration), () {
      _slideUp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'hero',
              child: Container(
                height: _height,
                color: Colors.blueAccent,
              ),
            ),
            AnimatedSlide(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
              offset: offset,
              child: Container(
                height: _height,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
