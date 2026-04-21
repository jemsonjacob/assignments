import 'package:flutter/material.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.deepPurple,
                            child: Image.asset(
                              'assets/female.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Alice Johnson",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "2 hours ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.purple,
                        ),
                        child: Image.asset('assets/hike.png', height: 200),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " Just finished an amazing hile! The view was incredible",
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "342 likes",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "45 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: () {}, child: Text("💗 Like")),
                          TextButton(
                            onPressed: () {},
                            child: Text("💬 Comment"),
                          ),
                          TextButton(onPressed: () {}, child: Text("↗️ Share")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.deepPurple,
                            child: Image.asset(
                              'assets/male.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Bob Smith",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "4 hours ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.purple,
                        ),
                        child: Image.asset('assets/job.png', height: 200),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "Excited to announce my new job at TechCorp!",
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "542 likes",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "67 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: () {}, child: Text("💗 Like")),
                          TextButton(
                            onPressed: () {},
                            child: Text("💬 Comment"),
                          ),
                          TextButton(onPressed: () {}, child: Text("↗️ Share")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.deepPurple,
                            child: Image.asset(
                              'assets/male2.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Carol Davies",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "6 hours ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.purple,
                        ),
                        child: Image.asset('assets/arrt.png', height: 200),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("Just finished my digital art project!"),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "100 likes",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "7 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: () {}, child: Text("💗 Like")),
                          TextButton(
                            onPressed: () {},
                            child: Text("💬 Comment"),
                          ),
                          TextButton(onPressed: () {}, child: Text("↗️ Share")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
