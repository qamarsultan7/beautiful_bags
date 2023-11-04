import 'package:beautiful_bags/Resources/Animations/home.dart';
import 'package:beautiful_bags/Resources/Componenets/appbar.dart';
import 'package:beautiful_bags/Resources/Componenets/banner.dart';
import 'package:beautiful_bags/Resources/Componenets/popular.dart';
import 'package:beautiful_bags/Resources/Componenets/popular_bags.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Animations animations = Animations();
  
    
    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: [
                    CustomAppbar(constraints: constraints),
                    BannerBags(constraints: constraints),
                    const SizedBox(height: 20),
                    const PopularLine(),
                    PopularProduct(
                      constraints: constraints,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
