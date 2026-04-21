import 'package:assignments/assignments/hotel_booking.dart';
import 'package:assignments/assignments/listview_test.dart';
import 'package:assignments/assignments/registration_page.dart';
import 'package:assignments/assignments/stack_test.dart';
import 'package:assignments/screen_with_models/screens/main_screen.dart';
import 'package:assignments/socialhub/screens/new_home.dart';
//import 'package:assignments/assignments/ui_task_grid.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  //uncomment this
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewHome(), //social hub
      //     home: HotelBookingPage(), //hotel booking
      //     home:RegistrationPage(), //registration task
      //     home:AtmCard(), //stack task
      //    home: CustomList(), //listview task
    ),
  );
}
