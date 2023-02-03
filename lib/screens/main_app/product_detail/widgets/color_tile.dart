import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class ColorTile extends StatelessWidget {
  final String color;
  final VoidCallback? onTap;
  final bool isSelected;

  const ColorTile({
    Key? key,
    required this.color,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? CustomColor.selectedColorBackground : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? CustomColor.selectedColorBorder : CustomColor.greyColor,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Text(
            color,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.17,
            ),
          ),
        ),
      ),
    );
  }
}
