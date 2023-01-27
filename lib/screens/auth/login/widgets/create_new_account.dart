import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class CreateNewAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const CreateNewAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Don\'t have an account? ',
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
                'Sign Up',
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
