import 'package:flutter/material.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColor.productColor,
        ),
        child: Column(
          children: [
            Ink(
              height: 88,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                color: product.backgroundColor,
              ),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  height: 88,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 1.08,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        product.store.id,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          height: 1.27,
                          color: CustomColor.labelColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '•',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          height: 1.27,
                          color: CustomColor.labelColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.star,
                        color: CustomColor.filledRatingColor,
                        size: 14,
                      ),
                      Text(
                        product.rating.toString(),
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          height: 1.27,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        Money.fromDouble(value: product.currentPrice),
                        style: const TextStyle(
                          color: CustomColor.greenBorderColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        Money.fromDouble(value: product.previousPrice!),
                        style: const TextStyle(
                          color: CustomColor.strikeThroughColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
