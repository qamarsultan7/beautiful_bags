import 'package:beautiful_bags/Utils/Routes/rout_name.dart';
import 'package:beautiful_bags/Utils/Routes/routes.dart';
import 'package:beautiful_bags/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: const TextTheme(bodyMedium: TextStyle())),
      initialRoute: RouteNames.splashView,
      onGenerateRoute: Routes.generateRoute,
      
    );
  }
}
