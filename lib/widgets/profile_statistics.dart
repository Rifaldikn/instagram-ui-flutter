import "package:flutter/material.dart";

class ProfileStatistics extends StatelessWidget {
  const ProfileStatistics({Key? key, required this.label, required this.count})
      : super(key: key);

  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$count",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
