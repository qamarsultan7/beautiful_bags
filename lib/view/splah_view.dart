import 'dart:async';

import 'package:beautiful_bags/Resources/constants.dart';
import 'package:beautiful_bags/Utils/Routes/rout_name.dart';
import 'package:flutter/material.dart';

class SplahView extends StatefulWidget {
const SplahView({ Key? key }) : super(key: key);

  @override
  State<SplahView> createState() => _SplahViewState();
}

class _SplahViewState extends State<SplahView> {
  double scale=0;
  
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 800), () {
      setState(() {
        scale=2;
      });
     });

     Future.delayed(const Duration(milliseconds: 1600),(){
      Navigator.restorablePushReplacementNamed(context, RouteNames.homeView);
     });
  }
  @override
  Widget build(BuildContext context){
    return AnimatedScale(
      curve: Curves.fastOutSlowIn,
      scale: scale,
      duration: defaultDuration,
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/images/logo.png',),
        ),
      ),
    );
  }
}