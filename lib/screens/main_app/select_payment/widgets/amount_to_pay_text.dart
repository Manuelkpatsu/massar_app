import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class AmountToPayText extends StatelessWidget {
  final double amount;

  const AmountToPayText({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Money.fromDouble(value: amount),
      style: const TextStyle(
        color: CustomColor.greenBorderColor,
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
