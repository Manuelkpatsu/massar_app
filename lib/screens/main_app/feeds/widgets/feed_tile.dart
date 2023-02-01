import 'package:flutter/material.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/theme/custom_color.dart';

class FeedTile extends StatelessWidget {
  final Product feed;
  final VoidCallback onTap;

  const FeedTile({
    Key? key,
    required this.feed,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ink(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      feed.store.image,
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 11),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            feed.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            feed.store.id,
                            style: const TextStyle(
                              color: CustomColor.labelColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 1.27,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 11),
                    IconButton(
                      splashRadius: 20,
                      visualDensity: VisualDensity.compact,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.black.withOpacity(0.5),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Ink(
                color: feed.backgroundColor,
                height: 180,
                width: double.infinity,
                child: Image.asset(feed.image, height: 110),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '12 mins',
                          style: TextStyle(
                            color: CustomColor.periodColor,
                            height: 1.45,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: const Icon(Icons.message_outlined, size: 20),
                          color: CustomColor.periodColor,
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up_outlined, size: 20),
                          color: CustomColor.periodColor,
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: const Icon(Icons.share_rounded, size: 20),
                          color: CustomColor.periodColor,
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      feed.description,
                      style: const TextStyle(
                        color: Colors.black,
                        height: 1.3,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Specification',
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.3,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ...feed.specifications.map((specification) {
                      return Text(
                        '- $specification',
                        style: const TextStyle(
                          color: Colors.black,
                          height: 1.3,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
