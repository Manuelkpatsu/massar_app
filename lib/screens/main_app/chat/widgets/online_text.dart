import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class OnlineText extends StatelessWidget {
  const OnlineText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Online',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: CustomColor.greenColor,
        height: 1.17,
      ),
    );
  }
}
