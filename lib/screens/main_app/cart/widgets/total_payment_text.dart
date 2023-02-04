import 'package:flutter/material.dart';

class TotalPaymentText extends StatelessWidget {
  const TotalPaymentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Total Payment',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
