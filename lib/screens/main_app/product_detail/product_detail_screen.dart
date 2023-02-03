import 'package:flutter/material.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/screens/main_app/notifications/notifications_screen.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/screens/widgets/rounded_icon_button.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/color_tile.dart';
import 'widgets/details.dart';
import 'widgets/product_detail_tab.dart';
import 'widgets/product_detail_thumbnail.dart';
import 'widgets/product_name_text.dart';
import 'widgets/product_price_text.dart';
import 'widgets/product_quantity_text.dart';
import 'widgets/product_store_rating.dart';
import 'widgets/reviews.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail';

  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>
    with AutomaticKeepAliveClientMixin<ProductDetailScreen> {
  String? _selectedColor;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final product = widget.product;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                centerTitle: true,
                actions: [
                  CustomBadge(
                    icon: Icons.markunread_outlined,
                    text: '0',
                    onTap: () {},
                  ),
                  CustomBadge(
                    icon: Icons.notifications_none_rounded,
                    text: '0',
                    onTap: () =>
                        Navigator.of(context).pushNamed(NotificationsScreen.routeName),
                  ),
                  CustomBadge(
                    icon: Icons.shopping_cart_outlined,
                    text: '0',
                    onTap: () {},
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ProductDetailThumbnail(
                      image: product.image,
                      id: product.id,
                      backgroundColor: product.backgroundColor,
                    ),
                    Positioned(
                      right: 18,
                      bottom: -20,
                      child: RoundedIconButton(
                        icon: Icons.favorite_border_rounded,
                        onTap: () {},
                        backgroundColor: Colors.white,
                        size: 40,
                        iconSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductNameText(name: product.name),
                      ProductPriceText(
                        currentPrice: product.currentPrice,
                        originalPrice: product.previousPrice!,
                      ),
                      const SizedBox(height: 10),
                      ProductStoreRating(
                        store: product.store,
                        rating: product.rating,
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: ProductDetailTab()),
            ];
          },
          body: TabBarView(
            children: [
              Details(
                description: product.description,
                specifications: product.specifications,
                colorsWidget: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: product.colors.length,
                  itemBuilder: (context, int index) {
                    final String color = product.colors[index];

                    return ColorTile(
                      onTap: () {
                        setState(() => _selectedColor = color);
                      },
                      color: color,
                      isSelected:
                          _selectedColor == null ? false : _selectedColor == color,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 36,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                ),
              ),
              Reviews(reviews: product.reviews),
            ],
          ),
        ),
        bottomSheet: IntrinsicHeight(
          child: Ink(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: CustomColor.dividerColor, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RoundedIconButton(
                      icon: Icons.add,
                      onTap: () {},
                      inkWellShapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shapeBorder: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: CustomColor.greyColor, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 13),
                    const ProductQuantityText(quantity: 1),
                    const SizedBox(width: 13),
                    RoundedIconButton(
                      icon: Icons.remove,
                      onTap: () {},
                      inkWellShapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shapeBorder: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: CustomColor.greyColor, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  width: 180,
                  onPressed: () {},
                  widget: const Text('Add to cart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
