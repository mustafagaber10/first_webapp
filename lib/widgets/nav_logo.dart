import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "<  ",
          style: TextStyle(
            color: Colors.blueGrey.shade100,
            fontSize: 22,
            fontFamily: "Poppins",
            // fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Mustafa",

          style: TextStyle(
            fontFamily: 'Agustina',
            color: Colors.blueGrey.shade100,
            fontSize: 22,
            letterSpacing:2,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? "  />\t\t" : "  />",
          style: TextStyle(
            color: Colors.blueGrey.shade100,
            fontSize: 22,
            // fontWeight: FontWeight.bold,
            fontFamily: "Poppins",

          ),
        )
      ],
    );
  }
}