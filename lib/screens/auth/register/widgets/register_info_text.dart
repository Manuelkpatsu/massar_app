import 'package:flutter/material.dart';

class RegisterInfoText extends StatelessWidget {
  const RegisterInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enter your personal details to create your account',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.5,
      ),
    );
  }
}
