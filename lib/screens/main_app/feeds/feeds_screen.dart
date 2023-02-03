import 'package:flutter/material.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/models/review.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/feed_tile.dart';

class FeedsScreen extends StatelessWidget {
  static const routeName = '/feeds';

  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> feeds = [
      Product(
        id: 4,
        image: 'assets/images/products/eyeglass.png',
        name: 'Eyeglasses Gucci',
        currentPrice: 211.00,
        previousPrice: 444.99,
        rating: 4.5,
        store: Store.gucciStore,
        description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
        specifications: const [
          'Processor Core i3',
          'IMAC (Mid 2010)',
          'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
          'Built In Display 21,5 Inch (1920 X 1080 )',
        ],
        colors: const [
          'Green',
          'Black',
          'Silver',
          'Blue',
        ],
        backgroundColor: CustomColor.productColorFour,
        reviews: [
          Review(
            id: 1,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.5,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 2,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 3,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 5.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
        ],
      ),
      Product(
        id: 2,
        image: 'assets/images/products/nike-shoe.png',
        name: 'Sport Shoes Nike',
        currentPrice: 711.99,
        previousPrice: 9922.99,
        rating: 4.2,
        store: Store.nikeStore,
        description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
        specifications: const [
          'Processor Core i3',
          'IMAC (Mid 2010)',
          'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
          'Built In Display 21,5 Inch (1920 X 1080 )',
        ],
        colors: const [
          'Green',
          'Black',
          'Silver',
          'Blue',
        ],
        backgroundColor: CustomColor.productColorFive,
        reviews: [
          Review(
            id: 1,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.5,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 2,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 3,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 5.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
        ],
      ),
      Product(
        id: 3,
        image: 'assets/images/products/macbook.png',
        name: 'Macbook Pro',
        currentPrice: 1500.00,
        previousPrice: 4444.99,
        rating: 4.5,
        store: Store.appleStore,
        description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
        specifications: const [
          'Processor Core i3',
          'IMAC (Mid 2010)',
          'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
          'Built In Display 21,5 Inch (1920 X 1080 )',
        ],
        colors: const [
          'Green',
          'Black',
          'Silver',
          'Blue',
        ],
        backgroundColor: CustomColor.productColorSeven,
        reviews: [
          Review(
            id: 1,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.5,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 2,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 3,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 5.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
        ],
      ),
      Product(
        id: 4,
        image: 'assets/images/products/smart-watch.png',
        name: 'Smart Watch T80',
        currentPrice: 268.20,
        previousPrice: 1322.99,
        rating: 4.5,
        store: Store.appleStore,
        description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
        specifications: const [
          'Processor Core i3',
          'IMAC (Mid 2010)',
          'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
          'Built In Display 21,5 Inch (1920 X 1080 )',
        ],
        colors: const [
          'Green',
          'Black',
          'Silver',
          'Blue',
        ],
        backgroundColor: CustomColor.productColorTen,
        reviews: [
          Review(
            id: 1,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.5,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 2,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 4.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
          Review(
            id: 3,
            profilePhoto: 'assets/images/reviewer.png',
            profileName: 'Arnold Cuan',
            rating: 5.0,
            message: 'wow this is the product i like the most, and a trusted and friendly shop',
            createdAt: DateTime(2023, 1, 31, 12, 30, 20),
          ),
        ],
      ),
    ];

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        itemCount: feeds.length,
        itemBuilder: (ctx, int index) {
          final Product feed = feeds[index];

          return FeedTile(feed: feed, onTap: () {});
        },
      ),
    );
  }
}
