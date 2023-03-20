import 'package:first_webapp/widgets/appbar_button.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/logo.png"),
        Row(
          children: [
            appBarButton(text: "About", function: (){},),
            appBarButton(text: "Portfolio", function: (){}),
            appBarButton(text: "Contact", function: (){}),
            SizedBox(
              width: 120,
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
                child: const Text('Get Started',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
