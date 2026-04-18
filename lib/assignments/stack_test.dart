import 'dart:math' as math;
import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget {
  const AtmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
            ),
            height: 280,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: 0,
                  child: Image.asset('assets/fi.png', width: 80, height: 50),
                ),
                Positioned(
                  left: 20,
                  bottom: 130,
                  child: Row(
                    children: [
                      Image.asset('assets/sim.jpg', width: 80, height: 50),
                      Transform.rotate(
                        angle: math.pi / 2,
                        child: Icon(Icons.wifi, color: Colors.white, size: 35),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: Row(
                    children: [
                      Text(
                        "Arthur Dent",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      const SizedBox(width: 210),
                      Image.asset('assets/vsa.png', width: 80, height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
