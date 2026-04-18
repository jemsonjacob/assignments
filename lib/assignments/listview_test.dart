import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> month = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(month[index], style: TextStyle(fontSize: 22)),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index % 4 == 0) {
            return Card(
              color: Colors.red,
              shape: BoxBorder.all(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Advertisement',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
        itemCount: month.length,
      ),
    );
  }
}
