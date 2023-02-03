import 'package:flutter/material.dart';
import 'package:massar_app/models/review.dart';

import 'review_tile.dart';

class Reviews extends StatelessWidget {
  final List<Review> reviews;

  const Reviews({Key? key, required this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: reviews.map((review) {
      return ReviewTile(review: review);
    }).toList());
  }
}
