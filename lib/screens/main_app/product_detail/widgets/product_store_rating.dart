import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/theme/custom_color.dart';

class ProductStoreRating extends StatelessWidget {
  final Store store;
  final double rating;

  const ProductStoreRating({
    Key? key,
    required this.store,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          store.image,
          width: 18,
          height: 18,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 7),
        Text(
          store.id,
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
        RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 14,
          itemPadding: const EdgeInsets.symmetric(horizontal: 3),
          ignoreGestures: true,
          unratedColor: CustomColor.ratingColor,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: CustomColor.filledRatingColor,
          ),
          onRatingUpdate: (rating) {},
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1.08,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
