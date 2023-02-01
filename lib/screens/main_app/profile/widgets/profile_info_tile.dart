import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class ProfileInfoTile extends StatelessWidget {
  final String title;
  final String info;
  final Color infoTextColor;

  const ProfileInfoTile({
    Key? key,
    required this.title,
    required this.info,
    required this.infoTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
