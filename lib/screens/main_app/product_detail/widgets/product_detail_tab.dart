import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class ProductDetailTab extends StatelessWidget {
  const ProductDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      padding: EdgeInsets.symmetric(horizontal: 24),
      labelPadding: EdgeInsets.zero,
      labelColor: CustomColor.greenColor,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.17,
      ),
      unselectedLabelColor: CustomColor.labelColor,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.17,
      ),
      isScrollable: false,
      indicatorColor: CustomColor.greenColor,
      indicatorWeight: 1,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [Tab(text: 'Details'), Tab(text: 'Review')],
    );
  }
}
