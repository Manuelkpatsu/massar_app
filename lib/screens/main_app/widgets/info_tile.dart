import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String info;
  final Color infoTextColor;

  const InfoTile({
    Key? key,
    required this.title,
    required this.info,
    required this.infoTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: CustomColor.labelColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            info,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: infoTextColor,
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
