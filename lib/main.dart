// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:latent/home.dart';
import 'package:latent/splash.dart';
import 'package:latent/logostart.dart';
import 'package:latent/encode.dart';
import 'package:latent/decode.dart';
import 'package:latent/recentpage.dart';
import 'package:latent/scroll.dart';
//  import 'package:latent/newpage.dart';

void main() => runApp(const Latent());

class Latent extends StatelessWidget {
  const Latent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff163300),
        primaryColor: const Color(0xff163300),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 48.0,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: Color(0xff9FE870)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            minimumSize: const Size(125, 48),
            backgroundColor: const Color(0xff9FE870),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
