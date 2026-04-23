import 'package:assignments/hotel_booking/models/hotel_model.dart';
import 'package:flutter/material.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key});

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final Hotel hotel = ModalRoute.of(context)!.settings.arguments as Hotel;
    var total = count * hotel.price;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text(
            "Hotel Details",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.deepPurple.shade200,
              child: Image.asset(hotel.image),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotel.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.yellow.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "⭐ ${hotel.rating.toString()}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "🩸 ${hotel.location}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(hotel.about),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Amenities",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                //Wrap
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: List.generate(
                    hotel.amenities.length,
                    (index) => Chip(
                      side: BorderSide(
                        color: Colors.blue.shade200.withOpacity(0.2),
                      ),
                      backgroundColor: Colors.blue.shade200.withOpacity(0.2),
                      label: Text(
                        hotel.amenities[index],
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Room Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Item"),
                        SizedBox(height: 10),
                        Text("Total Rooms"),
                        SizedBox(height: 10),
                        Text("Total Beds"),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Count"),
                        SizedBox(height: 10),
                        Text(hotel.totalRooms.toString()),
                        SizedBox(height: 10),
                        Text(hotel.totalBeds.toString()),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  "Select Nights",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (count > 1) {
                          setState(() {
                            count--;
                          });
                        }
                        print(count);
                      },
                      icon: Icon(Icons.remove, color: Colors.blue),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "$count Night",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                        print(count);
                      },

                      icon: Icon(Icons.add, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 100,

                    color: Colors.blue.shade200.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Price"),
                              Text(
                                "\$${total.toString()}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/bookingconfirm',
                                arguments: {
                                  'hotel': hotel,
                                  'totalPrice': total,
                                  'night': count,
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: Text("✔️ Book Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
