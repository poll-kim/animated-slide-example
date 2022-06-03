import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Offset _offset = Offset.zero;
  double _height = 300;
  double _width = 300;
  final Duration _duration = const Duration(milliseconds: 1000);
  final Curve _curve = Curves.fastOutSlowIn;

  void _slideUpAndScale(Duration duration) {
    Future.delayed(duration, () {
      setState(() {
        _offset -= const Offset(0, 1);
        _width += 200;
        _height += 200;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _slideUpAndScale(_duration);
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
                height: 500,
                color: Colors.blueAccent,
              ),
            ),
            AnimatedSlide(
              duration: _duration,
              curve: _curve,
              offset: _offset,
              child: AnimatedContainer(
                duration: _duration,
                curve: _curve,
                width: _width,
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
