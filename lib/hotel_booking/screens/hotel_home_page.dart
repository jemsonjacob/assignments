import 'package:assignments/hotel_booking/models/hotel_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Hotel> hotels = [
      Hotel(
        name: "Luxury Palace Hotel",
        image: 'assets/hotel/1.png',
        location: "Downtown, New York",
        rating: 4.8,
        reviews: 324,
        price: 299,
        amenities: ["WiFi", "Pool", "Gym", "Restuarant", "Spa"],
        about: "Experience luxury at its finest with world-class amenities",
        totalRooms: 150,
        totalBeds: 300,
      ),
      Hotel(
        name: "Business Inn",
        image: 'assets/hotel/2.png',
        location: "Financial District",
        rating: 4.5,
        reviews: 184,
        price: 179,
        amenities: ["WiFi", "Business Center", "Conference Room"],
        about: "Experience luxury at its finest with world-class amenities",
        totalRooms: 80,
        totalBeds: 120,
      ),
      Hotel(
        name: "Beachfront Resort",
        image: 'assets/hotel/3.png',
        location: "Coastal Area",
        rating: 4.7,
        reviews: 424,
        price: 349,
        amenities: [
          "Beach Access",
          "Pool",
          "Water Sports",
          "Restuarant",
          "Bar",
        ],
        about: "Enjoy stunning ocean views and pristine beaches.",
        totalRooms: 120,
        totalBeds: 250,
      ),
      Hotel(
        name: "Budget Stay Hotel",
        image: 'assets/hotel/4.png',
        location: "Suburb Area",
        rating: 4.2,
        reviews: 234,
        price: 89,
        amenities: ["WiFi", "Pool", "Gym", "Restuarant", "Spa"],
        about: "Experience luxury at its finest with world-class amenities",
        totalRooms: 50,
        totalBeds: 100,
      ),
      Hotel(
        name: "Mountain Lodge",
        image: 'assets/hotel/5.png',
        location: "Hill Station",
        rating: 4.6,
        reviews: 174,
        price: 199,
        amenities: ["Hiking", "Bonfire", "Restuarant", "Spa"],
        about: "Serene mountain views and peaceful environment",
        totalRooms: 40,
        totalBeds: 80,
      ),
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Exit App"),
            content: const Text("Do you want to exit?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No"),
              ),
              TextButton(
                onPressed: () {
                  SystemNavigator.pop(); // exit app
                },
                child: const Text("Yes"),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            title: Text(
              "Hotel Booking",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
            automaticallyImplyLeading: false,
          ),
        ),
        body: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            final Hotel hotel = hotels[index];
            return InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, '/details', arguments: hotel),
              child: Card(
                child: ListTile(
                  visualDensity: VisualDensity(vertical: 4),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(hotel.image),
                      ),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "🩸 ${hotel.location}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐ ${hotel.rating}",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "(${hotel.reviews} reviews)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$${hotel.price}",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      Text(
                        "per night",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
