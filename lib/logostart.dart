import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 308,
          width: 315,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/logo2.png',
                  height: 177,
                  width: 250,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/logo1.png',
                  height: 238,
                  width: 243,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
