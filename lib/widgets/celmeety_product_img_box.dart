import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CelmeetyProductImgBox extends StatefulWidget {
  CelmeetyProductImgBox(
      {Key? key,
      required Duration duration,
      required Curve curve,
      required Offset offset,
      required double width,
      required double height,
      required this.tag,
      required this.heroImgPath,
      required this.imgPath})
      : _duration = duration,
        _curve = curve,
        _offset = offset,
        _width = width,
        _height = height,
        super(key: key);

  final Duration _duration;
  final Curve _curve;
  Offset _offset;
  double _width;
  double _height;
  final String tag;
  final String heroImgPath;
  final String imgPath;

  @override
  State<CelmeetyProductImgBox> createState() => _CelmeetyProductImgBoxState();
}

class _CelmeetyProductImgBoxState extends State<CelmeetyProductImgBox> {
  void _slideUpAndScale(Duration duration) {
    Future.delayed(duration, () {
      setState(() {
        widget._offset -= const Offset(0, 1);
        widget._width += 200;
        widget._height += 200;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _slideUpAndScale(widget._duration);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Hero(
            tag: widget.tag,
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(widget.heroImgPath))),
            ),
          ),
          AnimatedSlide(
            duration: widget._duration,
            curve: widget._curve,
            offset: widget._offset,
            child: AnimatedContainer(
              duration: widget._duration,
              curve: widget._curve,
              width: widget._width,
              height: widget._height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
