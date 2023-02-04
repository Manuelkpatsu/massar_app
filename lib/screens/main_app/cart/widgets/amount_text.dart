import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class AmountText extends StatelessWidget {
  final double amount;

  const AmountText({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Money.fromDouble(value: amount),
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: CustomColor.greenColor,
      ),
    );
  }
}
