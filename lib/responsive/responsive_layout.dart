import 'package:first_webapp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget webScaffold;
  final Widget tabletScaffold;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.webScaffold,
      required this.tabletScaffold});

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(BuildContext context, BoxConstraints constraints)
      {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100 &&
            constraints.maxWidth >= 800) {
          return tabletScaffold;
        } else {
          return webScaffold;
        }

        // if(constraints.minWidth.toInt()<=560)
        // {
        //   return MediaQuery(
        //       data: MediaQuery.of(context).copyWith(
        //         textScaleFactor: 0.8,
        //
        //       ),
        //       child:  HomeScreen()
        //   );
        // }
        // return  HomeScreen();

      },
    );
  }
}
