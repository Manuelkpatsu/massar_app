import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class OrderSuccessInfoText extends StatelessWidget {
  const OrderSuccessInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'We will contact the seller so that it can be sent immediately to your destination',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.descriptionColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.75,
      ),
    );
  }
}
