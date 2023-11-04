
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final int ratingCount;
  final int size;
  const RatingBar(
      {Key? key,
      required this.rating,
      required this.ratingCount,
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _starRating = [];
    int realNumber = rating.floor();
    int partNumber = ((rating - realNumber) * 10).ceil();
    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        _starRating.add(Icon(
          Icons.star,
          color: Colors.yellow,
          size: size.toDouble(),
        ));
      } else if (i == realNumber) {
        _starRating.add(SizedBox(
            height: 20,
            width: 20,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: size.toDouble()),
                ClipRect(
                  clipper: _Clipper(part: partNumber.toDouble()),
                  child: Icon(Icons.star,
                      color: Colors.grey, size: size.toDouble()),
                )
              ],
            )));
      } else {
        _starRating.add( Icon(
          Icons.star,
          color: Colors.grey,
          size: size.toDouble(),
        ));
      }
    }
    return Row(
      children: [
        Row(children: _starRating),
        Text('(${ratingCount.toString()})')
      ],
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  final double part;

  _Clipper({required this.part});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(
      (size.width / 10) * part,
      0.0,
      size.width,
      size.height,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}