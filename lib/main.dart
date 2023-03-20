import 'package:first_webapp/mobile_view.dart';
import 'package:first_webapp/screens/home/home_screen.dart';
import 'package:first_webapp/web_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mustafa\'s Website',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: home_Screen(),
      // LayoutBuilder(builder:(BuildContext context, BoxConstraints constraints)
      //     {
      //       print(constraints.minHeight.round());
      //       if(constraints.minWidth.toInt()<=560) {
      //         return MediaQuery(
      //           data: MediaQuery.of(context).copyWith(
      //             textScaleFactor: 0.8,
      //
      //           ),
      //             child: MobileView()
      //         );
      //       }
      //
      //       return const WebView();
      //
      //     },
      // ),
    );
  }
}


