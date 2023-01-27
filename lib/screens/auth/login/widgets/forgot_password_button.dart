import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: CustomColor.orangeColor.withOpacity(0.1),
      highlightColor: CustomColor.orangeColor.withOpacity(0.1),
      onTap: onTap,
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: CustomColor.orangeColor,
          height: 1.5,
        ),
      ),
    );
  }
}
