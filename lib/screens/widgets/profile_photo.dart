import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String photo;
  final double size;

  const ProfilePhoto({
    Key? key,
    required this.photo,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(photo),
            fit: BoxFit.contain,
        ),
      ),
    );
  }
}
