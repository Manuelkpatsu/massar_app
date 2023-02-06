import 'package:flutter/material.dart';

class ShippingStatusText extends StatelessWidget {
  const ShippingStatusText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Shipping Status',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
