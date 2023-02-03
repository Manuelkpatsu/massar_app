import 'package:flutter/material.dart';

class ProductDetailThumbnail extends StatelessWidget {
  final Color backgroundColor;
  final String image;
  final int id;

  const ProductDetailThumbnail({
    Key? key,
    required this.backgroundColor,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 250,
      width: double.infinity,
      color: backgroundColor,
      child: Hero(
        tag: id,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
