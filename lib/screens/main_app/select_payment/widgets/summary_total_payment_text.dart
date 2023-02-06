import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class SummaryTotalPaymentText extends StatelessWidget {
  const SummaryTotalPaymentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Total Payment',
      style: TextStyle(
        color: CustomColor.descriptionColor,
        fontSize: 12,
        height: 1.5,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
