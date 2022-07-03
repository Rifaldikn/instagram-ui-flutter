import "package:flutter/material.dart";

import "../widgets/profile_picture.dart";
import "../widgets/profile_statistics.dart";
import "../widgets/profile_description.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.lock_outline_rounded, size: 17),
              SizedBox(width: 5),
              Text("username"),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
          actions: [
            IconButton(
              splashRadius: 1,
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Expanded(
              child: Row(
                children: [
                  const ProfilePicture(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ProfileStatistics(label: "Post", count: 10),
                        ProfileStatistics(label: "Followers", count: 1),
                        ProfileStatistics(label: "Following", count: 48),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const ProfileDescription(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(17),
                      ),
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      child: const Icon(
                        Icons.person_add_rounded,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
