import 'package:assignments/hotel_booking/models/hotel_model.dart';
import 'package:flutter/material.dart';

class BookingConfirmPage extends StatelessWidget {
  const BookingConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;

    final Hotel hotel = data['hotel'];
    final totalPrice = data['totalPrice'];
    final night = data['night'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Confirmation",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green.shade200.withValues(alpha: 0.30),
                child: Icon(Icons.check, color: Colors.green),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                "Booking Confirmed!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(child: Image.asset(hotel.image)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotel.name,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              hotel.location,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    buildRow(context, "Nights:", "${night.toString()} Night"),
                    const SizedBox(height: 10),
                    buildRow(
                      context,
                      "Price per Night:",
                      "\$${hotel.price.toString()}",
                    ),
                    const SizedBox(height: 10),
                    buildRow(
                      context,
                      "Total Amount:",
                      "\$${totalPrice.toString()}",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Continue Shopping"),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mybooking');
                  },
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("View Booking"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(BuildContext context, String item1, String item2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(item1),
        Text(item2, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
