import 'package:flutter/material.dart';

Widget iconContact({required IconData iconData, required VoidCallback onTap})=>
    IconButton(
        hoverColor: Colors.deepOrange,
        highlightColor: Colors.white54,
        splashRadius: 32,
        onPressed: onTap,
        // padding: const EdgeInsets.symmetric(horizontal: 18),
        // enableFeedback: true,
        // splashColor: Colors.deepOrange.shade800,
        // constraints: const BoxConstraints(),
        //     visualDensity: ,
        iconSize: 40.0,
        icon: Icon(iconData,color: Colors.white,),
);