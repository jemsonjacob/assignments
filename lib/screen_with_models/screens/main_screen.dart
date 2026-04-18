import 'package:assignments/screen_with_models/screens/details_page.dart';
import 'package:assignments/screen_with_models/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      ///same as home:
      routes: {
        //routes means screns
        '/': (context) => HomePage(), //first page
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
