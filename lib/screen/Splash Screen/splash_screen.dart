import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../user/login.dart';
import '../Home Screen/home_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    // Start a timer that lasts for 3 seconds
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      // After 3 seconds, navigate to HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
      );
    });
    return Scaffold(
      body: Container(
        
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                RadialGradient(center: Alignment.topLeft, radius: 1,colors: [
          Color(0xff32343b),
          Color(0xff1c1e22),
        ])),
        child: Center(
          child: Text(
            'PixelsCo.',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  letterSpacing: 4,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
