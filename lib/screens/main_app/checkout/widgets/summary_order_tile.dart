import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class SummaryOrderTile extends StatelessWidget {
  final String title;
  final String amount;

  const SummaryOrderTile({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: CustomColor.descriptionColor,
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: CustomColor.descriptionColor,
            ),
          )
        ],
      ),
    );
  }
}
