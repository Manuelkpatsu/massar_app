import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class CustomBadge extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final String text;

  const CustomBadge({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Badge(
        onTap: () {},
        badgeContent: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 10,
            height: 1.5,
          ),
        ),
        position: BadgePosition.topEnd(top: -15, end: -4),
        badgeAnimation: const BadgeAnimation.rotation(
          animationDuration: Duration(seconds: 1),
          colorChangeAnimationDuration: Duration(seconds: 1),
          loopAnimation: false,
          curve: Curves.fastOutSlowIn,
          colorChangeAnimationCurve: Curves.easeInCubic,
        ),
        badgeStyle: const BadgeStyle(
          shape: BadgeShape.circle,
          badgeColor: CustomColor.badgeColor,
          padding: EdgeInsets.all(6),
          elevation: 0,
        ),
        child: Icon(icon),
      ),
    );
  }
}
