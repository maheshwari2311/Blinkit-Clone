import 'dart:async';

import 'package:blinket_application/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: unused_field
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Splashscreen",
      child: Scaffold(
        backgroundColor: Color(
          0xFFF7CB45,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/splashScreen.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
