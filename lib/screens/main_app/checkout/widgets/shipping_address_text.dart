import 'package:flutter/material.dart';

class ShippingAddressText extends StatelessWidget {
  const ShippingAddressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Shipping Address',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 1.54,
      ),
    );
  }
}
