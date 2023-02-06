import 'package:flutter/material.dart';

class SelectCardsText extends StatelessWidget {
  const SelectCardsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Select Cards',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.54,
      ),
    );
  }
}
