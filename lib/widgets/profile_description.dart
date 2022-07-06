import "package:flutter/material.dart";

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: "Rifaldi Kusnawan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                height: 2,
              ),
            ),
            TextSpan(text: "\nSoftware Engineer [ Vue, Golang, Flutter]"),
            TextSpan(
              text: "\n💚 💜 🐇",
            ),
          ],
        ),
      ),
    );
  }
}
