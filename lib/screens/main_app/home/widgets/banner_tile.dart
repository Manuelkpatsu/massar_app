import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final String banner;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;

  const BannerTile({
    Key? key,
    required this.banner,
    required this.onTap,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink.image(
          image: AssetImage(banner),
          height: 120,
          width: 250,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
