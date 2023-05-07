import 'package:first_webapp/screens/about/about_screen.dart';
import 'package:first_webapp/screens/home/content_about_me.dart';
import 'package:first_webapp/screens/home/drawer.dart';
import 'package:first_webapp/screens/home/top_appbar.dart';
import 'package:first_webapp/utils/responsive.dart';
import 'package:first_webapp/widgets/nav_logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  // double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // _opacity = _scrollPosition < screenSize.height * 0.40
    //     ? _scrollPosition / (screenSize.height * 0.40)
    //     : 1;

    return Scaffold(
      endDrawer: const MobileDrawer(),
      // drawer: const MobileDrawer(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF243447),
      appBar:
      ResponsiveWidget.isMediumScreen(context) ||
          ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
        backgroundColor: const Color(0xFF243447),
        elevation: 0,
        title:
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: NavBarLogo(),
          ),
        // Text(
        //   'PORTFOLIO',
        //   style: TextStyle(
        //     color: Colors.blueGrey.shade100,
        //     fontSize: 20,
        //     fontWeight: FontWeight.w400,
        //     letterSpacing: 3,
        //   ),
        // ),
      ): PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: const TopBarContents(),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true ,
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                      child: ContentAboutMe()
                  ),
                  Expanded(
                    child:
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Image.asset("assets/images/me.png",),
                    //   ],
                    // ),
                    Container(
                      // color: Colors.deepOrange,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:AssetImage("assets/images/me.png",),
                            alignment: Alignment.topRight,
                        ),
                      ),
                      height: 500,
                    ),
                  ),

                ],
              ),
            Container(
              color: Colors.redAccent,
                width: screenSize.width,
                height: 200,
              ),
            AboutScreen()
          ],
        ),
      ),
    );
  }
}
