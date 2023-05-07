import 'package:first_webapp/widgets/nav_logo.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  // final double opacity;

  const TopBarContents(
      // this.opacity,
      {super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  bool light = true;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      // color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:40,vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   'PORTFOLIO',
            //   style: TextStyle(
            //     color: Colors.blueGrey.shade100,
            //     fontSize: 20,
            //     fontFamily: 'Montserrat',
            //     fontWeight: FontWeight.w400,
            //     letterSpacing: 3,
            //   ),
            // ),
            NavBarLogo(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: screenSize.width / 8),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[0] = true
                            : _isHovering[0] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Discover',
                          style: TextStyle(
                            color: _isHovering[0]
                                ? Colors.blue.shade200
                                : Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.blue.shade200,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[1] = true
                            : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                            color: _isHovering[1]
                                ? Colors.blue[200]
                                : Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.blue.shade200,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[2] = true
                            : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Portfolio',
                          style: TextStyle(
                            color: _isHovering[2]
                                ? Colors.blue[200]
                                : Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.blue.shade200,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ButtonStyle(
                        elevation:
                        MaterialStateProperty.all<double>(0.0),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(
                            Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            )),
                      ),
                      child: const Text('Resume',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Switch(

                    value: light,
                    inactiveTrackColor: Colors.grey,
                    // value: appProvider.isDark,
                    onChanged: (value) {
                      setState(() {
                        light = value;
                      });
                    },
                    activeColor: Colors.deepOrange,
                  ),
                  // ToggleButtons(
                  //   isSelected: [true],
                  //   onPressed: (int index) {
                  //     // setState(() {
                  //     //   isSelected[index] = !isSelected[index];
                  //     // });
                  //   },
                  //   children: const <Widget>[
                  //     Icon(Icons.ac_unit),
                  //     // Icon(Icons.call),
                  //     // Icon(Icons.cake),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}