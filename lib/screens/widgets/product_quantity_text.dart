import 'package:flutter/material.dart';

class ProductQuantityText extends StatelessWidget {
  final int quantity;

  const ProductQuantityText({
    Key? key,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$quantity',
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        height: 1.58,
      ),
    );
  }
}
