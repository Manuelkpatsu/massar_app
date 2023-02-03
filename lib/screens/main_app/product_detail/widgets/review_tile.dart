import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:massar_app/models/review.dart';
import 'package:massar_app/screens/widgets/profile_photo.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReviewTile extends StatelessWidget {
  final Review review;

  const ReviewTile({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePhoto(photo: review.profilePhoto, size: 24),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            review.profileName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.17,
                            ),
                          ),
                          const SizedBox(height: 5),
                          RatingBar.builder(
                            initialRating: review.rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 14,
                            itemPadding: const EdgeInsets.only(right: 3),
                            ignoreGestures: true,
                            unratedColor: CustomColor.ratingColor,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: CustomColor.filledRatingColor,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      timeago.format(review.createdAt, allowFromNow: true),
                      style: const TextStyle(
                        fontSize: 10,
                        color: CustomColor.descriptionColor,
                        fontWeight: FontWeight.w300,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  review.message,
                  style: const TextStyle(
                    color: CustomColor.descriptionColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    height: 1.33,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
