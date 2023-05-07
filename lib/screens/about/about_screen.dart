import 'package:first_webapp/utils/responsive.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isSmallScreen(context)||ResponsiveWidget.isMediumScreen(context)?
      const EdgeInsets.only(left: 12.0):const EdgeInsets.only(left: 40.0),
      child: Container(
        height: 500,
        color: Colors.greenAccent,
      ),
    );
  }
}
