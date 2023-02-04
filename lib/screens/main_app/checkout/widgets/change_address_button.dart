import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class ChangeAddressButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ChangeAddressButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
        foregroundColor: CustomColor.greenColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
      child: const Text('Change address'),
    );
  }
}
