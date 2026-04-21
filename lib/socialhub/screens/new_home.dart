import 'package:assignments/socialhub/screens/feeds_page.dart';
import 'package:assignments/socialhub/screens/messages_page.dart';
import 'package:assignments/socialhub/screens/noti_page.dart';
import 'package:assignments/socialhub/screens/profile_page.dart';
import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "📱SocialHub",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withValues(alpha: 0.30),
                ),
                child: Icon(Icons.notifications, color: Colors.amber),
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Feeds"),
              Tab(icon: Icon(Icons.message), text: "Messages"),
              Tab(icon: Icon(Icons.notifications), text: "Notifications"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FeedsPage(),
            MessagesPage(),
            NotificationPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
