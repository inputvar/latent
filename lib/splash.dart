import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 81, 00),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Image.asset(
            'assets/plane.png',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 6),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: 'Send Images but with \na',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff9FE870)),
              children: <TextSpan>[
                TextSpan(
                    text: ' Hidden',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 52, 36))),
                TextSpan(text: ' Message \nInside!'),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 30, right: 30),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the next screen
          },
          child: Text(
            'Let\'s Start',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
