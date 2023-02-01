import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String photo;
  final double radius;

  const ProfilePhoto({
    Key? key,
    required this.photo,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(photo),
    );
  }
}
