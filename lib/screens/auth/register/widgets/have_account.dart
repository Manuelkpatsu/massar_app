import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class HaveAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const HaveAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Have an account? ',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          height: 1.54,
        ),
        children: [
          WidgetSpan(
            child: InkWell(
              splashColor: CustomColor.orangeColor.withOpacity(0.1),
              highlightColor: CustomColor.orangeColor.withOpacity(0.1),
              onTap: onTap,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: CustomColor.orangeColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
