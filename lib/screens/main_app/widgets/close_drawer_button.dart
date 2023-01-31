import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class CloseDrawerButton extends StatelessWidget {
  const CloseDrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -10,
      right: -5,
      child: IconButton(
        splashRadius: 20,
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.close,
          color: CustomColor.labelColor,
          size: 20,
        ),
      ),
    );
  }
}
