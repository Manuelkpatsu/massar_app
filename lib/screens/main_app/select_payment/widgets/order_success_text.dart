import 'package:flutter/material.dart';

class OrderSuccessText extends StatelessWidget {
  const OrderSuccessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your order has been successful',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
