import 'package:flutter/material.dart';

class TransactionProductThumbnail extends StatelessWidget {
  final String image;
  final int id;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double height;
  final double width;
  final double borderRadius;

  const TransactionProductThumbnail({
    Key? key,
    required this.image,
    required this.id,
    required this.backgroundColor,
    required this.padding,
    required this.height,
    required this.width,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Hero(
          tag: 'Transaction-$id',
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
