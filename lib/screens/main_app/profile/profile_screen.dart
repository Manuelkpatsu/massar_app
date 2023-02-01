import 'package:flutter/material.dart';
import 'package:massar_app/models/profile_item.dart';
import 'package:massar_app/screens/main_app/profile/widgets/profile_nav_tile.dart';
import 'package:massar_app/screens/widgets/profile_photo.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

import 'widgets/phone_number_text.dart';
import 'widgets/profile_info_tile.dart';
import 'widgets/profile_name_text.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProfileItem> items = [
      ProfileItem(
        image: 'assets/images/profile-user.png',
        title: 'User Profile',
        subTitle: 'Consectetur adipiscing elit sedorea',
        onTap: () {},
      ),
      ProfileItem(
        image: 'assets/images/profile-bell.png',
        title: 'Notifications',
        subTitle: 'Consectetur adipiscing elit sedorea',
        onTap: () {},
      ),
      ProfileItem(
        image: 'assets/images/profile-promotion.png',
        title: 'Promotion',
        subTitle: 'Consectetur adipiscing elit sedorea',
        onTap: () {},
      ),
      ProfileItem(
        image: 'assets/images/profile-about.png',
        title: 'About',
        subTitle: 'Consectetur adipiscing elit sedorea',
        onTap: () {},
      ),
      ProfileItem(
        image: 'assets/images/profile-setting.png',
        title: 'Settings',
        subTitle: 'Consectetur adipiscing elit sedorea',
        onTap: () {},
      ),
    ];

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
            toolbarHeight: 190,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfilePhoto(
                      photo: 'assets/images/profile-photo.png',
                      radius: 25,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ProfileNameText(name: 'Didin Sumargodon'),
                          SizedBox(height: 5),
                          PhoneNumberText(phoneNumber: '+817 80312 8065'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    ProfileInfoTile(
                      title: 'Balance',
                      info: Money.fromDouble(value: 809.97),
                      infoTextColor: CustomColor.primaryColor,
                    ),
                    const SizedBox(width: 13),
                    const ProfileInfoTile(
                      title: 'My Reward Points',
                      info: '800 Points',
                      infoTextColor: CustomColor.buttonColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, index) {
                final ProfileItem profileItem = items[index];

                return ProfileNavTile(profileItem: profileItem);
              },
              childCount: items.length,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
