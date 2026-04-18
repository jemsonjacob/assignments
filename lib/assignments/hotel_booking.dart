import 'package:flutter/material.dart';

class HotelBookingPage extends StatefulWidget {
  const HotelBookingPage({super.key});

  @override
  State<HotelBookingPage> createState() => _HotelBookingPageState();
}

class _HotelBookingPageState extends State<HotelBookingPage> {
  TextEditingController cityController = TextEditingController();
  DateTime checkinDate = DateTime.now();
  DateTime checkoutDate = DateTime.now();
  TimeOfDay checkinTime = TimeOfDay.now();
  String roomRadioValue = "Deluxe Rooms- \$120/night";
  String guestRadioValue = "Business";

  String dropDownval = '1 Guest';

  bool checkbox1 = true;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = true;
  bool checkbox5 = false;

  double priceVal = 0;

  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.75),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //top
            Container(
              height: height * 0.20,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '🏨 Hotel Booking',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Book your perfect stay',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            //search
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SEARCH HOTELS"),
                    const SizedBox(height: 5),
                    Text("City *"),
                    TextFormField(
                      controller: cityController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text("Check-in Date *"),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: checkinDate,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );

                          if (picked != null) {
                            setState(() {
                              checkinDate = picked;
                            });
                          }
                          // print(checkinDate);
                        },

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month),
                            Text(checkinDate.toString().split(' ')[0]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text("Check-out Date *"),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: checkoutDate,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );

                          if (picked != null) {
                            setState(() {
                              checkoutDate = picked;
                            });
                          }
                        },

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month),
                            Text(checkoutDate.toString().split(' ')[0]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text("Preffere Check-in Time"),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? picked = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (picked != null) {
                            setState(() {
                              checkinTime = picked;
                            });
                          }
                        },

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.alarm),
                            Text(checkinTime.format(context)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //room
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room Type"),
                    RadioGroup(
                      groupValue: roomRadioValue,
                      onChanged: (value) {
                        setState(() {
                          roomRadioValue = value!;
                        });
                      },
                      child: Column(
                        children: [
                          RadioListTile(
                            value: "Deluxe Rooms- \$120/night",
                            title: Text("Deluxe Rooms- \$120/night"),
                          ),
                          RadioListTile(
                            value: "Premium Rooms- \$180/night",
                            title: Text("Premium Rooms- \$180/night"),
                          ),
                          RadioListTile(
                            value: "Suit - \$280/night",
                            title: Text("Suit - \$280/night"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            //guest type
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Guest Type"),
                    RadioGroup(
                      groupValue: guestRadioValue,
                      onChanged: (value) {
                        setState(() {
                          guestRadioValue = value!;
                        });
                      },
                      child: Column(
                        children: [
                          RadioListTile(
                            value: "Business",
                            title: Text("Business"),
                          ),
                          RadioListTile(
                            value: "Leisure",
                            title: Text("Leisure"),
                          ),
                          RadioListTile(value: "Family", title: Text("Family")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //room
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Number Of Guests"),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: dropDownval,
                      items: [
                        DropdownMenuItem(
                          value: '1 Guest',
                          child: Text("1 Guest"),
                        ),
                        DropdownMenuItem(
                          value: '2 Guest',
                          child: Text("2 Guest"),
                        ),
                        DropdownMenuItem(
                          value: '3 Guest',
                          child: Text("3 Guest"),
                        ),
                        DropdownMenuItem(
                          value: '4 Guest',
                          child: Text("4 Guest"),
                        ),
                        DropdownMenuItem(
                          value: '5+ Guest',
                          child: Text("5+ Guest"),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          dropDownval = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            //amenties
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Amenties"),
                    CheckboxListTile(
                      title: Text("🏊‍♂️ Swimming Pool"),
                      value: checkbox1,
                      onChanged: (value) => setState(() {
                        checkbox1 = value!;
                      }),
                    ),
                    CheckboxListTile(
                      title: Text("🍽️ Restaurant"),
                      value: checkbox2,
                      onChanged: (value) => setState(() {
                        checkbox2 = value!;
                      }),
                    ),
                    CheckboxListTile(
                      title: Text("💪 Gym"),
                      value: checkbox3,
                      onChanged: (value) => setState(() {
                        checkbox3 = value!;
                      }),
                    ),
                    CheckboxListTile(
                      title: Text("📶 Free WiFi"),
                      value: checkbox4,
                      onChanged: (value) => setState(() {
                        checkbox4 = value!;
                      }),
                    ),
                    CheckboxListTile(
                      title: Text("🚗 Parking"),
                      value: checkbox5,
                      onChanged: (value) => setState(() {
                        checkbox5 = value!;
                      }),
                    ),
                  ],
                ),
              ),
            ),

            //price
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price Range"),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Max Price"),
                        Text(
                          '\$${priceVal.toStringAsFixed(0).toString()}',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),

                    Slider(
                      min: 0,
                      max: 500,
                      value: priceVal,
                      onChanged: (value) => setState(() {
                        priceVal = value;
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$0", style: TextStyle(color: Colors.grey)),
                        Text('\$500', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //preference
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Preferences"),
                    const SizedBox(height: 10),
                    SwitchListTile(
                      activeColor: Colors.blue,
                      title: Text("Non-Smoking Room"),
                      value: switch1,
                      onChanged: (value) => setState(() {
                        switch1 = value;
                      }),
                    ),
                    const Divider(),
                    SwitchListTile(
                      activeColor: Colors.blue,
                      title: Text("Breakfast included"),
                      value: switch2,
                      onChanged: (value) => setState(() {
                        switch2 = value;
                      }),
                    ),
                    const Divider(),
                    SwitchListTile(
                      activeColor: Colors.blue,
                      title: Text("Early Check-in"),
                      value: switch3,
                      onChanged: (value) => setState(() {
                        switch3 = value;
                      }),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),

            //special
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Special Requests"),
                    const SizedBox(height: 10),

                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hint: Text("Let us know any special requirements ...."),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HotelBookingPage(),
                        ),
                      );
                    },
                    child: Text("Clear"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text("Search"),
                    icon: Icon(Icons.search),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.purple,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
