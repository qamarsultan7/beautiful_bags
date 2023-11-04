import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class PopularLine extends StatelessWidget {
  const PopularLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: defaultDuration,
        curve: Curves.linear,
        tween: Tween<double>(begin: .0, end: .6),
        builder: (context, value, child) {
         int progressValue = (value * 10).toInt();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular',
                  style: heading2,
                ),
                SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${progressValue}/10'),
                        LinearProgressIndicator(
                          value: value,
                          color: Colors.black,
                          backgroundColor: Colors.grey[350],
                        ),
                      ],
                    ))
              ],
            ),
          );
        });
  }
}
