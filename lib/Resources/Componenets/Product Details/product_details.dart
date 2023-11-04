import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final BoxConstraints constraints;
  const ProductDetails({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: constraints.maxHeight * .008,
        ),
        const Text('Tetra Backpack, which has a mix of urban and'),
        const Text('nature designs, has three color choices.'),
        SizedBox(
          height: constraints.maxHeight * 0.004,
        ),
        const Text(
          'Spesifikasi',
          style: heading2,
        ),
        SizedBox(
          height: constraints.maxHeight * 0.004,
        ),
        const Text('Dimension: H: 47,5 x W: 31 x D: 15 cm'),
        SizedBox(
          height: constraints.maxHeight * 0.003,
        ),
        const Text('Capacity: 22 L'),
        SizedBox(
          height: constraints.maxHeight * 0.002,
        ),
        const Text('Weight: 0,6 Kg')
      ],
    );
  }
}
