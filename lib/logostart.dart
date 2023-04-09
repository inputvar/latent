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
      body: Center(
        child: Container(
          height: 308,
          width: 315,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Image.asset(
                    'assets/logo2.png',
                    height: 177,
                    width: 250,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Image.asset(
                    'assets/logo1.png',
                    height: 238,
                    width: 243,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
