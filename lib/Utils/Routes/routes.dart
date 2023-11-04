import 'package:beautiful_bags/Utils/Routes/rout_name.dart';
import 'package:beautiful_bags/view/home_view.dart';
import 'package:beautiful_bags/view/product_details_view.dart';
import 'package:beautiful_bags/view/splah_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments; // Retrieve arguments from settings

    switch (settings.name) {
      case RouteNames.splashView:
        
        return MaterialPageRoute(builder: (BuildContext context) => const SplahView());
    
      case RouteNames.homeView:
        
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RouteNames.productDetailsView:
        return MaterialPageRoute(
          builder: (BuildContext context) => ProductDetailsView(image: args.toString()),
        );

      // Handle invalid arguments for productDetailsView route
      default:
        // Handle unknown routes
        return MaterialPageRoute(builder: (BuildContext context) {
          return const Scaffold(
            body: Center(
              child: Text('No page Route Defined'),
            ),
          );
        });
    }
  }
}
