import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color? backgroundColor;
  final ShapeBorder shapeBorder;
  final ShapeBorder inkWellShapeBorder;
  final double iconSize;
  final double size;

  const RoundedIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.padding = const EdgeInsets.all(6),
    this.color = Colors.black,
    this.backgroundColor,
    this.shapeBorder = const CircleBorder(
      side: BorderSide(color: CustomColor.greyColor, width: 0.5),
    ),
    this.inkWellShapeBorder = const CircleBorder(),
    this.iconSize = 13,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: inkWellShapeBorder,
      child: Ink(
        width: size,
        height: size,
        decoration: ShapeDecoration(color: backgroundColor, shape: shapeBorder),
        child: Center(child: Icon(icon, color: color, size: iconSize)),
      ),
    );
  }
}
