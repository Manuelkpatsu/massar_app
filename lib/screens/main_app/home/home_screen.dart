import 'package:flutter/material.dart';
import 'package:massar_app/models/category.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/screens/widgets/product_tile.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/address_picker.dart';
import 'widgets/banner_tile.dart';
import 'widgets/category_tile.dart';
import 'widgets/new_products_title.dart';
import '../widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Category> _categories = const [
    Category(id: 1, name: 'Electronic', image: 'assets/images/categories/electronic.png'),
    Category(id: 2, name: 'Fashion', image: 'assets/images/categories/fashion.png'),
    Category(id: 3, name: 'F&B', image: 'assets/images/categories/cloth.png'),
    Category(id: 4, name: 'Beauty', image: 'assets/images/categories/beauty.png'),
    Category(id: 5, name: 'Deals', image: 'assets/images/categories/deal.png'),
  ];
  final List<String> _promotions = [
    'assets/images/promotions/banner-1.png',
    'assets/images/promotions/banner-2.png',
    'assets/images/promotions/banner-3.png',
    'assets/images/promotions/banner-4.png',
  ];
  final List<Product> _products = const [
    Product(
      id: 1,
      image: 'assets/images/products/imac.png',
      name: 'Imac 27 Inch 5k',
      currentPrice: 999.99,
      previousPrice: 1322.99,
      rating: 4.5,
      store: Store.appleStore,
      description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
      specifications: [
        'Processor Core i3',
        'IMAC (Mid 2010)',
        'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
        'Built In Display 21,5 Inch (1920 X 1080 )',
      ],
      colors: [
        'Green',
        'Black',
        'Silver',
        'Blue',
      ],
      backgroundColor: CustomColor.productColorOne,
    ),
    Product(
      id: 2,
      image: 'assets/images/products/samsung-flip.png',
      name: 'Samsung z flip',
      currentPrice: 711.99,
      previousPrice: 9922.99,
      rating: 4.2,
      store: Store.samsungStore,
      description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
      specifications: [
        'Processor Core i3',
        'IMAC (Mid 2010)',
        'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
        'Built In Display 21,5 Inch (1920 X 1080 )',
      ],
      colors: [
        'Green',
        'Black',
        'Silver',
        'Blue',
      ],
      backgroundColor: CustomColor.productColorTwo,
    ),
    Product(
      id: 3,
      image: 'assets/images/products/uniqio.png',
      name: 'Flanell Uniqlo',
      currentPrice: 86.00,
      previousPrice: 122.00,
      rating: 4.5,
      store: Store.uniqloStore,
      description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
      specifications: [
        'Processor Core i3',
        'IMAC (Mid 2010)',
        'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
        'Built In Display 21,5 Inch (1920 X 1080 )',
      ],
      colors: [
        'Green',
        'Black',
        'Silver',
        'Blue',
      ],
      backgroundColor: CustomColor.productColorThree,
    ),
    Product(
      id: 4,
      image: 'assets/images/products/eyeglass.png',
      name: 'Eyeglasses Gucci',
      currentPrice: 211.00,
      previousPrice: 444.99,
      rating: 4.5,
      store: Store.gucciStore,
      description: 'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD 500GB SECOND',
      specifications: [
        'Processor Core i3',
        'IMAC (Mid 2010)',
        'Memory 4GB 1333 MHz DDR3 (bisa upgrade)',
        'Built In Display 21,5 Inch (1920 X 1080 )',
      ],
      colors: [
        'Green',
        'Black',
        'Silver',
        'Blue',
      ],
      backgroundColor: CustomColor.productColorFour,
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: CustomColor.primaryColor,
            pinned: false,
            snap: false,
            floating: false,
            toolbarHeight: 115,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddressPicker(
                  onTap: () {},
                  address: 'St 394 Jackson, New york  United Status',
                ),
                const SizedBox(height: 20),
                SearchTextField(controller: _searchController),
                const SizedBox(height: 10),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 110.0,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final Category category = _categories[index];

                  return CategoryTile(
                    category: category,
                    onTap: () {},
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 130.0,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: _promotions.length,
                itemBuilder: (context, index) {
                  final String banner = _promotions[index];

                  return BannerTile(
                    banner: banner,
                    onTap: () {},
                    padding: EdgeInsets.only(
                      right: index == _promotions.length - 1 ? 0 : 13,
                    ),
                  );
                },
              ),
            ),
          ),
          const NewProductsTitle(),
          SliverToBoxAdapter(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: _products.length,
              itemBuilder: (context, int index) {
                final Product product = _products[index];

                return ProductTile(
                  onTap: () {},
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
