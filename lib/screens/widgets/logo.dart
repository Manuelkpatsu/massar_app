import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final double fontSize;

  const Logo({
    Key? key,
    required this.firstColor,
    required this.secondColor,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Mas',
        style: TextStyle(
          fontFamily: 'Futura',
          color: firstColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
        ),
        children: [
          TextSpan(
            text: 'sar',
            style: TextStyle(
              fontFamily: 'Futura',
              color: secondColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
