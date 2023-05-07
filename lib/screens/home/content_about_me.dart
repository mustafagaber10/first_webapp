import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first_webapp/animations/entrance_fader.dart';
import 'package:first_webapp/screens/home/contact_icons.dart';
import 'package:first_webapp/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentAboutMe extends StatelessWidget {
  const ContentAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      // color: Colors.grey,
      child: Padding(
        padding:
        ResponsiveWidget.isSmallScreen(context)||ResponsiveWidget.isMediumScreen(context)?
        const EdgeInsets.only(left: 12.0):const EdgeInsets.only(left: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            SizedBox(width: double.infinity,height: screenSize.height / 10,),
            Row(
              children: [
                Text(
                  ResponsiveWidget.isSmallScreen(context)?
                  "HEY THERE!  ":"WELCOME TO MY PORTFOLIO!  ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    height: 2,
                  ),
                ),
                Padding(
                  padding:
                  ResponsiveWidget.isSmallScreen(context)?
                  const EdgeInsets.only(top: 20.0):const EdgeInsets.only(top: 8.0),
                  child: EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 2),
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset("assets/hi.gif",
                      height: 28,
                    ),
                  ),
                ),

              ],
            ),
            RichText(
              text:  TextSpan(
                text: 'Mustafa',
                style: ResponsiveWidget.isSmallScreen(context)?
                const TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Montserrat",
                  height: 1.1,
                ): const TextStyle(
                  color: Colors.white,
                  fontSize: 90.0,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Montserrat",
                  height: 1.1,
                ),
                children: <TextSpan>[
                   TextSpan(
                    text: '\nGaber',
                    style: ResponsiveWidget.isSmallScreen(context)?
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      height: 1.1,
                    ): const TextStyle(
                      color: Colors.white,
                      fontSize: 90.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: EntranceFader(
                offset: const Offset(-10, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.deepOrange,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        TyperAnimatedText(
                          ' Data Analyst ',
                          speed: const Duration(milliseconds: 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        TyperAnimatedText(
                          ' Front-End Developer ',
                          speed: const Duration(milliseconds: 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Wrap(
              spacing: 18,
              alignment: WrapAlignment.start,
              children: [
                iconContact(iconData: FontAwesomeIcons.facebook, onTap: (){}),
                iconContact(iconData: FontAwesomeIcons.linkedin, onTap: (){}),
                iconContact(iconData: FontAwesomeIcons.github, onTap: (){}),
                iconContact(iconData: FontAwesomeIcons.instagram, onTap: (){}),
                iconContact(iconData: FontAwesomeIcons.twitter, onTap: (){}),
                iconContact(iconData: FontAwesomeIcons.whatsapp, onTap: (){}),
              ],
            ),
            const SizedBox(height: 40.0,),
            // Wrap(
            //     children: [
            //       SizedBox(
            //         width: 100,
            //         height: 40,
            //         child: ElevatedButton(
            //           onPressed: () {
            //           },
            //           style: ButtonStyle(
            //             elevation:
            //             MaterialStateProperty.all<double>(0.0),
            //             foregroundColor:
            //             MaterialStateProperty.all<Color>(
            //                 Colors.deepOrange),
            //             backgroundColor:
            //             MaterialStateProperty.all<Color>(
            //                 Colors.deepOrange),
            //             shape: MaterialStateProperty.all<
            //                 RoundedRectangleBorder>(
            //                 RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(24.0),
            //                   side: const BorderSide(
            //                     color: Colors.deepOrange,
            //                     width: 0,
            //                   ),
            //                 )),
            //           ),
            //           child: const Text('Hire Me ...',style: TextStyle(color: Colors.white),),
            //         ),
            //       ),
            //       const SizedBox(width: 20),
            //       SizedBox(
            //         width: 100,
            //         height: 40,
            //         child: ElevatedButton(
            //           onPressed: () {
            //           },
            //           style: ButtonStyle(
            //
            //             elevation:
            //             MaterialStateProperty.all<double>(0.0),
            //             foregroundColor:
            //             MaterialStateProperty.all<Color>(
            //                 Colors.white),
            //             backgroundColor:
            //             MaterialStateProperty.all<Color>(
            //                 Colors.transparent),
            //             shape: MaterialStateProperty.all<
            //                 RoundedRectangleBorder>(
            //                 RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(20.0),
            //                   side: const BorderSide(
            //                     color: Colors.white,
            //                     width: 1,
            //                   ),
            //                 )),
            //           ),
            //           child: const Text('Portfolio',style: TextStyle(color: Colors.white),),
            //         ),
            //       ),
            //     ]
            // ),
          ],
        ),
      ),
    );
  }
}
