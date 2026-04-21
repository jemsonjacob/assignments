import 'package:assignments/socialhub/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Profile profile = Profile(
      name: "John Doe",
      email: "@johndoe",
      job: "Product Designer",
      about:
          "Love design,photography, and exploring new places.Always open to collabrations!",
      image: 'assets/male.png',
      post: 234,
      followers: 5.2,
      following: 892,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.deepPurple,
                child: Image.asset(profile.image, height: 60, width: 60),
              ),
              const SizedBox(height: 15),
              Text(
                profile.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${profile.email} ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "· ${profile.job}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              //Folowers
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueGrey.withValues(alpha: 0.10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            profile.post.toString(),
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 20,

                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "${profile.followers.toString()}K",
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 20,

                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            profile.following.toString(),
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              //about
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ABOUT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        profile.about,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              //buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        " ✏️  Edit Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade300,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        " ⚙️ Settings",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
