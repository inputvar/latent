import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage()), // corrected class name
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset(
            'assets/plane.png',
            width: 450,
            height: 450,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Send Images but with \na',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff9FE870)),
              children: <TextSpan>[
                TextSpan(
                    text: ' Hidden',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0x3DF8FFF3))),
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
        padding: const EdgeInsets.only(bottom: 30, right: 30),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the next screen
          },
          child: const Text(
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
