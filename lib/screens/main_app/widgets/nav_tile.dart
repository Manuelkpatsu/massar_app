import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class NavTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const NavTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      onTap: onPressed,
      leading: Icon(icon, color: CustomColor.labelColor, size: 24),
      horizontalTitleGap: 0,
      title: Text(
        title,
        style: const TextStyle(
          color: CustomColor.labelColor,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          height: 1.54,
        ),
      ),
    );
  }
}
