import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class ProductPriceText extends StatelessWidget {
  final double currentPrice;
  final double originalPrice;

  const ProductPriceText({
    Key? key,
    required this.currentPrice,
    required this.originalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '${Money.fromDouble(value: currentPrice)} ',
        style: const TextStyle(
          color: CustomColor.greenBorderColor,
          fontSize: 19,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: Money.fromDouble(value: originalPrice),
            style: const TextStyle(
              decoration: TextDecoration.lineThrough,
              decorationThickness: 1.0,
              decorationColor: CustomColor.strikeThroughColor,
              color: CustomColor.strikeThroughColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.40,
            ),
          ),
        ],
      ),
    );
  }
}
