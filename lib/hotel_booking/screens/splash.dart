import 'dart:async';

import 'package:assignments/hotel_booking/screens/hotel_home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HotelHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomEnd,
            colors: [
              Colors.blue.shade400,
              Colors.blueAccent,
              Colors.blue.shade700,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 250),
            //Icon(Icons.bolt, color: Colors.white60, size: 100),
            Image.asset(
              'assets/hotel/icon.png',
              height: 150,
              color: Colors.white,
            ),
            Text(
              'Hotel App',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(strokeWidth: 4, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
