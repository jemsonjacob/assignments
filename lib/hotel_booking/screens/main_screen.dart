import 'package:assignments/hotel_booking/screens/bookingConfirm_page.dart';
import 'package:assignments/hotel_booking/screens/hotel_details_page.dart';
import 'package:assignments/hotel_booking/screens/hotel_home_page.dart';
import 'package:assignments/hotel_booking/screens/my_booking_page.dart';
import 'package:assignments/hotel_booking/screens/splash.dart';
import 'package:flutter/material.dart';

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel",
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/': (context) => HotelHomePage(),
        '/details': (context) => HotelDetailsPage(),
        '/bookingconfirm': (context) => BookingConfirmPage(),
        '/mybooking': (context) => MyBookingPage(),
      },
    );
  }
}
