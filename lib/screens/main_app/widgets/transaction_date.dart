import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:massar_app/theme/custom_color.dart';

class TransactionDate extends StatelessWidget {
  final DateTime date;

  const TransactionDate({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMMd().format(date),
      style: const TextStyle(
        color: CustomColor.labelColor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
