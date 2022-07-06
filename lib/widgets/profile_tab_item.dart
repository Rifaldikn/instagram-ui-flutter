import "package:flutter/material.dart";

class TabItemProfile extends StatelessWidget {
  const TabItemProfile({Key? key, required this.icon, required this.isSelected})
      : super(key: key);

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: isSelected ? Colors.black : Colors.transparent,
            ),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
