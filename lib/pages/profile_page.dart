import "package:flutter/material.dart";

import "../widgets/profile_picture.dart";
import "../widgets/profile_statistics.dart";
import "../widgets/profile_description.dart";
import "../widgets//profile_stories.dart";
import "../widgets/profile_tab_item.dart";

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
            Text(
              "rifaldikn",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
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
          // Edit Profile Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton(
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
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Icon(
                      Icons.person_add_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Add Story")
                      ],
                    ),
                  ),
                  const StoriesAvatar(
                    label: "Stories 1",
                    storyImageURL: "https://picsum.photos/seed/picsum/200/300",
                  ),
                  const StoriesAvatar(
                    label: "Stories 2",
                    storyImageURL: "https://picsum.photos/seed/picsum/200/300",
                  ),
                  const StoriesAvatar(
                    label: "Stories 3",
                    storyImageURL: "https://picsum.photos/seed/picsum/200/300",
                  ),
                  const StoriesAvatar(
                    label: "Stories 4",
                    storyImageURL: "https://picsum.photos/seed/picsum/200/300",
                  ),
                  const StoriesAvatar(
                    label: "Stories 4",
                    storyImageURL: "https://picsum.photos/seed/picsum/200/300",
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: const [
              TabItemProfile(
                icon: Icons.grid_on_rounded,
                isSelected: true,
              ),
              TabItemProfile(
                icon: Icons.person_pin_outlined,
                isSelected: false,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: 21,
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/seed/picsum/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Shop",
          ),
        ],
      ),
    );
  }
}
