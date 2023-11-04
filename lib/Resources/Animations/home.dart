import 'package:beautiful_bags/Resources/constants.dart';
import 'package:flutter/material.dart';

class Animations {
  late AnimationController controller;
  late Animation<double> textAnimation;
  late Animation<double> searchBoxAnimation;
  late Animation<double> bagsAnimation;
  void setBagAnimation(SingleTickerProviderStateMixin vsync) {
    controller = AnimationController(
      vsync: vsync,
      duration:defaultDuration,
    );
    textAnimation = Tween<double>(
      begin: 50,
      end: 30,
    ).animate(controller);
    bagsAnimation = Tween<double>(begin: -20, end: 0).animate(controller);
    searchBoxAnimation =
        Tween<double>(begin: -20, end: 0).animate(controller);
    
    
  }
}
