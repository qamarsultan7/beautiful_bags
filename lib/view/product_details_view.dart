import 'package:beautiful_bags/Resources/Componenets/Product%20Details/image_detail.dart';
import 'package:beautiful_bags/Resources/Componenets/Product%20Details/product_details.dart';
import 'package:beautiful_bags/Resources/Componenets/Product%20Details/reviews.dart';
import 'package:beautiful_bags/Resources/Componenets/appbar.dart';
import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final String image;
  const ProductDetailsView({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Column(
                children: [
                  CustomAppbar(constraints: constraints),
                  Productimage(
                    constraints: constraints,
                    image: image,
                  ),
                  ProductDetails(
                    constraints: constraints,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.009,
                  ),
                  Reviews(
                    constraints: constraints,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          height: constraints.maxHeight / 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Rp 222.356',
                              style: heading2.copyWith(
                                  fontSize: constraints.maxWidth / 15),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20,),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          height: constraints.maxHeight / 10,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(210, 43, 73, 122),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Row(
                              children: [
                                const Icon(Icons.shopping_cart_checkout),
                                Text(
                                  'Add To Cart',
                                  style: heading2.copyWith(
                                      fontSize: constraints.maxWidth / 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
