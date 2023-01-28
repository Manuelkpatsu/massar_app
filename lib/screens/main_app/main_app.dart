import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'feeds/feeds_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';
import 'transaction/transaction_screen.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main_app';

  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late PersistentTabController _controller;
  List<Widget> _buildScreens() => [
    const HomeScreen(),
    const FeedsScreen(),
    const TransactionScreen(),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const Icon(Icons.home),
      inactiveIcon: const Icon(Icons.home_outlined),
      title: "Home",
      activeColorPrimary: CustomColor.menuItemColor,
      inactiveColorPrimary: CustomColor.labelColor,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const Icon(Icons.feed_rounded),
      inactiveIcon: const Icon(Icons.feed_outlined),
      title: 'Feeds',
      activeColorPrimary: CustomColor.menuItemColor,
      inactiveColorPrimary: CustomColor.labelColor,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const Icon(Icons.turned_in_rounded),
      inactiveIcon: const Icon(Icons.turned_in_not_rounded),
      title: 'Transaction',
      activeColorPrimary: CustomColor.menuItemColor,
      inactiveColorPrimary: CustomColor.labelColor,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const Icon(Icons.account_circle_rounded),
      inactiveIcon: const Icon(Icons.account_circle_outlined),
      title: 'My Profile',
      activeColorPrimary: CustomColor.menuItemColor,
      inactiveColorPrimary: CustomColor.labelColor,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
