import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class RememberMe extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;

  const RememberMe({Key? key, required this.isChecked, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: onChanged,
            activeColor: CustomColor.buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            side: const BorderSide(color: CustomColor.textFieldBorderColor, width: 0.5),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          const SizedBox(width: 3),
          const Text(
            'Remember me',
            style: TextStyle(
              color: CustomColor.rememberMeColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
