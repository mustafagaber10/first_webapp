import 'package:flutter/material.dart';

Widget appBarButton(
        {required String text,
        required Function function,
        bool isUpperCase = false,
        Color textColor = Colors.white,}) =>
    MaterialButton(
      onPressed: () {
        function();
      },
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
