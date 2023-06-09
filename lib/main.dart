
import 'package:first_webapp/screens/home/home_screen.dart';
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
      darkTheme: ThemeData(
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.deepOrange,
      ),
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
      // LayoutBuilder(builder:(BuildContext context, BoxConstraints constraints)
      //     {
      //       print(constraints.minHeight.round());
      //       if(constraints.minWidth.toInt()<=560) {
      //         return MediaQuery(
      //           data: MediaQuery.of(context).copyWith(
      //             textScaleFactor: 0.8,
      //
      //           ),
      //             child:  HomeScreen()
      //         );
      //       }
      //
      //       return  HomeScreen();
      //
      //     },
      // ),
    );
  }
}


