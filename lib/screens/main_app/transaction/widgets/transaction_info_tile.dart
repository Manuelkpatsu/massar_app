import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class TransactionInfoTile extends StatelessWidget {
  final String title;
  final String info;
  const TransactionInfoTile({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: CustomColor.labelColor,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          info,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 13,
            height: 1.54,
          ),
        )
      ],
    );
  }
}
