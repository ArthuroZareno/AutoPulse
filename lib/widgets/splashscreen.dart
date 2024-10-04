import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

import '../screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simulating a 3-second delay before navigating to the HomeScreen
    Timer(Duration(seconds: 4), () {
      // Replace HomeScreen() with your actual home page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your Lottie animation
            Lottie.asset('assets/animations/animation.json', // Lottie animation file path
              width: 200, // Customize the size of the animation
              height: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            Text(
              'AutoPulse',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
                fontFamily: "Squares",
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
