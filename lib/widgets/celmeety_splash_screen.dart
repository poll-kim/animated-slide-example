import 'package:flutter/material.dart';

class CelmeetySplashScreen extends StatefulWidget {
  const CelmeetySplashScreen(
      {Key? key,
      required this.size,
      required this.mill,
      required this.interval,
      required this.curve,
      required this.navigator,
      required this.imgPath})
      : super(key: key);
  final double size;
  final int mill;
  final int interval;
  final Curve curve;
  final void Function() navigator;
  final String imgPath;

  @override
  State<CelmeetySplashScreen> createState() => _CelmeetySplashScreenState();
}

class _CelmeetySplashScreenState extends State<CelmeetySplashScreen> {
  double _size = 100;

  @override
  void initState() {
    _size = widget.size;
    super.initState();
    Future.delayed(Duration(milliseconds: widget.mill), () {
      setState(() => _size = 0);
    });
    Future.delayed(Duration(milliseconds: widget.mill + widget.interval),
        widget.navigator);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _size,
          height: _size,
          curve: widget.curve,
          duration: Duration(milliseconds: widget.mill),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imgPath))),
        ),
      ),
    );
  }
}
