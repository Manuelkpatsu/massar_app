import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class Details extends StatelessWidget {
  final String description;
  final List<String> specifications;
  final Widget colorsWidget;

  const Details({
    Key? key,
    required this.description,
    required this.specifications,
    required this.colorsWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              color: CustomColor.descriptionColor,
              height: 1.42,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 7),
          const Text(
            'Specification',
            style: TextStyle(
              color: CustomColor.descriptionColor,
              height: 1.42,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          ...specifications.map((specification) {
            return Text(
              '- $specification',
              style: const TextStyle(
                color: CustomColor.descriptionColor,
                height: 1.42,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            );
          }).toList(),
          const SizedBox(height: 20),
          const Text(
            'Color',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.17,
            ),
          ),
          const SizedBox(height: 10),
          colorsWidget,
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
