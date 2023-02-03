import 'package:flutter/material.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/models/review.dart';
import 'package:massar_app/screens/main_app/product_detail/product_detail_screen.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/main_app/widgets/search_text_field.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/widgets/product_tile.dart';
import 'package:massar_app/theme/custom_color.dart';

class ProductsScreen extends StatefulWidget {
  static const routeName = '/products';

  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Product> _products = [
    Product(
      id: 1,
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
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
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
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 3,
      image: 'assets/images/products/red-dress.png',
      name: 'Red Dress',
      currentPrice: 86.00,
      previousPrice: 122.00,
      rating: 4.5,
      store: Store.uniqloStore,
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
      backgroundColor: CustomColor.productColorSix,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 4,
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
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 5,
      image: 'assets/images/products/brocoli.png',
      name: 'Fresh Broccoli',
      currentPrice: 1.00,
      previousPrice: 2.10,
      rating: 4.5,
      store: Store.uniqloStore,
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
      backgroundColor: CustomColor.productColorEight,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 6,
      image: 'assets/images/products/imac.png',
      name: 'Imac 27 Inch 5k',
      currentPrice: 999.99,
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
      backgroundColor: CustomColor.productColorOne,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 7,
      image: 'assets/images/products/samsung-flip.png',
      name: 'Samsung z flip',
      currentPrice: 711.99,
      previousPrice: 9922.99,
      rating: 4.2,
      store: Store.samsungStore,
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
      backgroundColor: CustomColor.productColorTwo,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 8,
      image: 'assets/images/products/uniqio.png',
      name: 'Flanell Uniqlo',
      currentPrice: 86.00,
      previousPrice: 122.00,
      rating: 4.5,
      store: Store.uniqloStore,
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
      backgroundColor: CustomColor.productColorThree,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 9,
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
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
    Product(
      id: 10,
      image: 'assets/images/products/iphone-13.png',
      name: 'Iphone 13 pro',
      currentPrice: 550.25,
      previousPrice: 844.99,
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
      backgroundColor: CustomColor.productColorNine,
      reviews: [
        Review(
          id: 1,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.5,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 2,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 4.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
        Review(
          id: 3,
          profilePhoto: 'assets/images/reviewer.png',
          profileName: 'Arnold Cuan',
          rating: 5.0,
          message:
              'wow this is the product i like the most, and a trusted and friendly shop',
          createdAt: DateTime(2023, 1, 31, 12, 30, 20),
        ),
      ],
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: CustomColor.primaryColor,
            pinned: true,
            snap: false,
            floating: false,
            titleSpacing: 0,
            expandedHeight: 90 + kToolbarHeight,
            title: const ScreenTitleText(title: 'All Products'),
            centerTitle: false,
            actions: [
              CustomBadge(
                icon: Icons.markunread_outlined,
                text: '0',
                onTap: () {},
              ),
              CustomBadge(
                icon: Icons.notifications_none_rounded,
                text: '0',
                onTap: () {},
              ),
              CustomBadge(
                icon: Icons.shopping_cart_outlined,
                text: '0',
                onTap: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              background: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 120),
                child: SearchTextField(controller: _searchController),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: _products.length,
              itemBuilder: (context, int index) {
                final Product product = _products[index];

                return ProductTile(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ProductDetailScreen.routeName,
                      arguments: product,
                    );
                  },
                  product: product,
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 13,
                crossAxisSpacing: 13,
                mainAxisExtent: 190,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
