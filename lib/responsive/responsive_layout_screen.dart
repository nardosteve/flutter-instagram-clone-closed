import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  //Properties
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  //Constructor
  const ResponsiveLayout({
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    //LayoutBuilder - helps in creating responsive layouts
    return LayoutBuilder(
      builder: (context, constraints) {
        //constraints of our app
        if (constraints.maxWidth > webScreenSize) {
          //web-screen
          return webScreenLayout;
        }
        //mobile screen
        return mobileScreenLayout;
      },
    );
  }
}
