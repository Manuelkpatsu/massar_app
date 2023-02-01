import 'package:flutter/material.dart';

class PhoneNumberText extends StatelessWidget {
  final String phoneNumber;

  const PhoneNumberText({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      style: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 1.54,
      ),
    );
  }
}
