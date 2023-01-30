import 'package:flutter/material.dart';
import 'package:massar_app/models/category.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;

  CategoryTile({
    Key? key,
    required this.category,
    required this.onTap,
    required this.padding,
  }) : super(key: Key(category.id.toString()));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: padding,
        child: Column(
          children: [
            Image.asset(
              category.image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 6),
            Text(
              category.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
