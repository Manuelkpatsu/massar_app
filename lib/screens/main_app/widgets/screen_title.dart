import 'package:flutter/material.dart';

class ScreenTitleText extends StatelessWidget {
  final String title;

  const ScreenTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
