import 'package:flutter/material.dart';

class CelmeetyProductImgBox extends StatefulWidget {
  const CelmeetyProductImgBox(
      {Key? key,
      required this.duration,
      required this.curve,
      required this.offset,
      required this.width,
      required this.height,
      required this.tag,
      required this.heroImgPath,
      required this.imgPath})
      : super(key: key);

  final Duration duration;
  final Curve curve;
  final Offset offset;
  final double width;
  final double height;
  final String tag;
  final String heroImgPath;
  final String imgPath;

  @override
  State<CelmeetyProductImgBox> createState() => _CelmeetyProductImgBoxState();
}

class _CelmeetyProductImgBoxState extends State<CelmeetyProductImgBox> {
  Offset _offset = Offset.zero;
  double _width = 300;
  double _height = 300;


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
    _offset = widget.offset;
    _width = widget.width;

    super.initState();
    _slideUpAndScale(widget.duration);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Hero(
            tag: widget.tag,
            transitionOnUserGestures: true,
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(widget.heroImgPath))),
            ),
          ),
          AnimatedSlide(
            duration: widget.duration,
            curve: widget.curve,
            offset: _offset,
            child: AnimatedContainer(
              duration: widget.duration,
              curve: widget.curve,
              width: _width,
              height: _height,
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
