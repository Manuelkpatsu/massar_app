import 'package:flutter/material.dart';

class LoginInfoText extends StatelessWidget {
  const LoginInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign in to Continue',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.5,
      ),
    );
  }
}
