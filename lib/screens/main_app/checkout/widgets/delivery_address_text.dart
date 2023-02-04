import 'package:flutter/material.dart';

class DeliveryAddressText extends StatelessWidget {
  final String address;

  const DeliveryAddressText({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
