import 'package:beautiful_bags/Resources/constants.dart';
import 'package:beautiful_bags/Utils/ratings.dart';
import 'package:flutter/material.dart';

class Productimage extends StatelessWidget {
  final String image;
  final BoxConstraints constraints;
  const Productimage({
    super.key,
    required this.constraints,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: 1.5),
      duration:Duration(milliseconds: 500),
      builder: (context,scale,child) {
        return Container(
          height: constraints.maxHeight / 2.5,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: const Color(0xffF4F4F4),
          child: Stack(
            children: [
              Center(
                  child: Hero(tag: image, child: AnimatedScale(
                    scale: scale,
                    
                    duration: defaultDuration,
                    child: Image(image: AssetImage(image))))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'BackPack\nTetra Navy',
                      style: heading2.copyWith(
                          color: const Color(0xFF213960),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const RatingBar(rating: 3.5, ratingCount: 39)
                  ],
                ),
              ),
              Positioned(
                top: 25,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.yellow, borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Sales'.toUpperCase(),
                    style:
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Positioned(
                  right: 0,
                  top: 5,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))
            ],
          ),
        );
      }
    );
  }
}
