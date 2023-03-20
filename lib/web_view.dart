import 'package:flutter/material.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login "),
      //   elevation: 0.0,
      //
      // ),
      body: Row(
          children:
          [
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:  20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 30.0),
                       child: Text(
                        "Login ",
                        style: Theme.of(context).textTheme.headlineMedium,

                    ),
                     ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email Address"),

                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Password"),

                      ),
                    ),
                    const SizedBox(height: 40.0,),
                    Row(
                      children:
                      [
                        Expanded(
                          child: Container(
                            height: 35.0,
                            color: Colors.deepPurpleAccent,
                            child: MaterialButton(
                              onPressed: (){},
                              child: const Text(
                              "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Container(
                            height: 35.0,
                            color: Colors.deepPurpleAccent,
                            child: MaterialButton(
                              onPressed: (){},
                              child: const Text(
                                  "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}
