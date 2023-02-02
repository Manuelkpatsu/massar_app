import 'package:flutter/material.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/widgets/banner_tile.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';

class PromotionScreen extends StatelessWidget {
  static const routeName = '/promotion';

  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> promotions = [
      'assets/images/promotions/banner-1.png',
      'assets/images/promotions/banner-2.png',
      'assets/images/promotions/banner-3.png',
      'assets/images/promotions/banner-4.png',
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Promotion'),
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
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        itemCount: promotions.length,
        itemBuilder: (ctx, index) {
          final String banner = promotions[index];

          return BannerTile(
            banner: banner,
            onTap: () {},
            padding: const EdgeInsets.only(bottom: 17),
            height: 142,
            width: double.infinity,
          );
        },
      ),
    );
  }
}
