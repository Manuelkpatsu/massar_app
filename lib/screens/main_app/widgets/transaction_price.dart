import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class TransactionPrice extends StatelessWidget {
  final double price;

  const TransactionPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Money.fromDouble(value: price),
      style: const TextStyle(
        color: CustomColor.greenBorderColor,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
