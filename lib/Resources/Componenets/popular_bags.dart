import 'package:beautiful_bags/Resources/constants.dart';
import 'package:beautiful_bags/Utils/Routes/rout_name.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  final BoxConstraints constraints;
  const PopularProduct({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: 1),
      duration: defaultDuration,
      builder: (context,scale,child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              childAspectRatio: constraints.maxWidth / constraints.maxWidth - .3,
              crossAxisCount: 2,
            ),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Hero(
                              tag: images[index].toString(),
                              child: AnimatedScale(
                                scale: scale,
                                duration: defaultDuration,
                                child: Image(image: AssetImage(images[index]))),
                            )),
                        Positioned.fill(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteNames.productDetailsView,arguments: images[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: const [
                                      0.4,
                                      .9
                                    ],
                                    colors: [
                                      Colors.white.withOpacity(.1),
                                      Colors.black.withOpacity(.4)
                                    ])),
                          ),
                        )),
                        Positioned(
                          bottom: constraints.maxHeight * .04,
                          left: constraints.maxWidth * .06,
                          child: const Text(
                            'Rp',
                            style: TextStyle(
                                fontFamily: defaultfont, color: Colors.yellow),
                          ),
                        ),
                        Positioned(
                          bottom: constraints.maxHeight * .02,
                          left: constraints.maxWidth * .12,
                          child: Text(
                            price[index],
                            style: const TextStyle(
                                fontFamily: defaultfont, color: Colors.white),
                          ),
                        ),
                        if (index == 1)
                          Positioned(
                            top: constraints.maxHeight * .07,
                            left: 0,
                            child: Container(
                              width: 50,
                              color: Colors.yellow,
                              child: const Center(
                                child: Text(
                                  'Sales',
                                  style: TextStyle(
                                      fontFamily: defaultfont,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * .009),
                  Text(tiles[index].toUpperCase()),
                  SizedBox(height: constraints.maxHeight * .004),
                  Text(subtitles[index].toUpperCase()),
                ],
              );
            },
          ),
        );
      }
    );
  }
}
