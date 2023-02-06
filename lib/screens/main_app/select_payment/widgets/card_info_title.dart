import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class CardInfoTitle extends StatelessWidget {
  final String title;

  const CardInfoTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: CustomColor.descriptionColor,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 1.45,
      ),
    );
  }
}
