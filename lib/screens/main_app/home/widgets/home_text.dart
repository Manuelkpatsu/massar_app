import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  const HomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Home',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
