import "package:flutter/material.dart";

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all((5)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple,
            Colors.pink,
            Colors.orange,
          ],
        ),
      ),
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvrLCVVV6cDGm3-hTfbkG-lyRQjOVL7n-OQQ&usqp=CAU")),
            borderRadius: BorderRadius.circular(100),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
