import 'package:flutter/material.dart';

class SummaryText extends StatelessWidget {
  const SummaryText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Summary',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.54,
      ),
    );
  }
}
