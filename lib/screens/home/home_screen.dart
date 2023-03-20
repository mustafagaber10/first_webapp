import 'dart:html';

import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class home_Screen extends StatelessWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF0E0C38),
      appBar: PreferredSize(
        child:CustomAppBar(),
        preferredSize: Size(screenSize.width, 50),
    ));
  }
}
