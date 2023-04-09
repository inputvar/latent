import 'package:flutter/material.dart';
import 'dart:ui';

class Splash extends StatefulWidget {
  const Splash({Key? key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 300,
            left: 70,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo2.png',
                height: 400,
                width: 400,
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 15,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo1.png',
                height: 400,
                width: 400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
