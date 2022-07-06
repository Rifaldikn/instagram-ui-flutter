import 'package:flutter/material.dart';

class StoriesAvatar extends StatelessWidget {
  const StoriesAvatar(
      {Key? key, required this.label, required this.storyImageURL})
      : super(key: key);

  final String label;
  final String storyImageURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 75,
            width: 75,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.grey,
            ),
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.white,
              child: Container(
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(storyImageURL),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(label)
        ],
      ),
    );
  }
}
