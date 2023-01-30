import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class NewProductsTitle extends StatelessWidget {
  const NewProductsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'New Products',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                height: 1.54,
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.54,
                ),
                foregroundColor: CustomColor.successColor,
              ),
              child: const Text('See All'),
            ),
          ],
        ),
      ),
    );
  }
}
