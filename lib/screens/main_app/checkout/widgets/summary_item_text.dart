import 'package:flutter/material.dart';

class SummaryItemText extends StatelessWidget {
  const SummaryItemText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Summary Item',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.54,
      ),
    );
  }
}
