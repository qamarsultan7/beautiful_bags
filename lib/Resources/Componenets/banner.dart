import 'dart:async';

import 'package:beautiful_bags/Resources/Animations/home.dart';
import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class BannerBags extends StatefulWidget {
  final BoxConstraints constraints;

  const BannerBags({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  State<BannerBags> createState() => _BannerBagsState();
}

class _BannerBagsState extends State<BannerBags>
    with SingleTickerProviderStateMixin {
  Animations animations = Animations();

  @override
  void initState() {
    super.initState();

    animations.setBagAnimation(this);
    animations.controller.forward();
    animations.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animations.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        curve: Curves.elasticOut,
        tween: Tween<double>(begin: 0, end: 1),
        duration: defaultDuration,
        builder: (context, scale, child) {
          return SizedBox(
            height: widget.constraints.maxHeight / 1.7,
            width: widget.constraints.maxWidth,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 0,
                  child: AnimatedScale(
                    duration: defaultDuration,
                    scale: scale.toDouble(),
                    child: Image(
                      height: widget.constraints.maxHeight * .55,
                      width: widget.constraints.maxWidth,
                      fit: BoxFit.fill,
                      image: const AssetImage('assets/images/bag3.png'),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.4, 0.9],
                        colors: [
                          Colors.white.withOpacity(.1),
                          Colors.black.withOpacity(.4),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: defaultDuration,
                  top: animations.searchBoxAnimation.value,
                  curve: Curves.fastOutSlowIn,
                  left: 20,
                  right: 20,
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 20, top: 30),
                        hintText: 'Bags',
                        hintStyle: const TextStyle(fontFamily: defaultfont),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: defaultDuration,
                  curve: Curves.fastOutSlowIn,
                  bottom: animations.textAnimation.value,
                  left: 20,
                  width: widget.constraints.maxWidth,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Visval',
                        style: heading1,
                      ),
                      Text(
                        'Backpack',
                        style: heading1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
