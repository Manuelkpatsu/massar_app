import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final String banner;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;
  final BoxFit fit;

  const BannerTile({
    Key? key,
    required this.banner,
    required this.onTap,
    required this.padding,
    required this.height,
    required this.width,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(banner),
              fit: fit,
            ),
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }
}
