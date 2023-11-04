import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final BoxConstraints constraints;
  const CustomAppbar({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: constraints.maxHeight / 12,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(fit: BoxFit.cover, image: AssetImage('assets/icon/dots.png')),
          Image(image: AssetImage('assets/images/logo.png')),
          Icon(Icons.shopping_bag_outlined)
        ],
      ),
    );
  }
}
