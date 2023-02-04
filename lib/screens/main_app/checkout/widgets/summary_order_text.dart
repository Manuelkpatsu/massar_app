import 'package:flutter/material.dart';

class SummaryOrderText extends StatelessWidget {
  const SummaryOrderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Summary Order',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.54,
      ),
    );
  }
}
