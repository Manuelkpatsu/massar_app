import 'package:flutter/material.dart';

class ProfileNameText extends StatelessWidget {
  final String name;

  const ProfileNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        height: 1.47,
      ),
    );
  }
}
