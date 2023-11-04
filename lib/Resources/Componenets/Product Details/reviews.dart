import 'package:beautiful_bags/Resources/Animations/home.dart';
import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
final BoxConstraints constraints;
  const Reviews({
    super.key,
     this.moveleft=45, required this.constraints,
  });

  final int moveleft;

  @override
  Widget build(BuildContext context) {
    return Container(padding:const EdgeInsets.symmetric(horizontal: 20),
      height: constraints.maxHeight * .2,
      color: const Color.fromARGB(15, 96, 126, 235),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 50,
            height: 8,
            decoration: BoxDecoration(
                color: const Color.fromARGB(90, 7, 43, 172),
                borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(
            height: constraints.maxHeight * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text.rich(
                TextSpan(
                    text: 'Reviews',
                    style: heading2,
                    children: [TextSpan(text: '(39)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500))]),
              ),
              SizedBox(
                  width: constraints.maxWidth / 1.96,
                  height: constraints.maxHeight/9.9,
                  child: Stack(
                    children: [
                      const ReviwesPro(
                        image: 'assets/images/person1.png',
                      ),
                      AnimatedPositioned(
                        duration: defaultDuration,
                        left: moveleft * 1,
                        child: const ReviwesPro(
                          image: 'assets/images/person2.png',
                        ),
                      ),
                      Positioned(
                        left: moveleft * 2,
                        child: const ReviwesPro(
                          image: 'assets/images/person3.png',
                        ),
                      ),
                      Positioned(
                          left: moveleft * 3,
                          child: const ReviwesPro(
                            image: 'assets/images/person4.png',
                          )),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class ReviwesPro extends StatelessWidget {
  final String image;
  const ReviwesPro({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    
    return TweenAnimationBuilder(
      curve:Curves.elasticInOut,
      duration: defaultDuration,
      
      tween: Tween<double>(begin: 10,end: 30),
      builder: (context,size,chil) {
        return CircleAvatar(
          radius: size,
          backgroundImage: AssetImage(image),
        );
      }
    );
  }
}
