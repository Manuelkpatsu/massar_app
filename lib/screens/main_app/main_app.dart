import 'package:flutter/material.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'feeds/feeds_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';
import 'transaction/transaction_screen.dart';
import 'widgets/screen_title.dart';

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
          icon: Image.asset('assets/images/navbar-icons/home-active.png'),
          inactiveIcon: Image.asset('assets/images/navbar-icons/home.png'),
          title: "Home",
          activeColorPrimary: CustomColor.menuItemColor,
          inactiveColorPrimary: CustomColor.labelColor,
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/images/navbar-icons/feeds-active.png'),
          inactiveIcon: Image.asset('assets/images/navbar-icons/feeds.png'),
          title: 'Feeds',
          activeColorPrimary: CustomColor.menuItemColor,
          inactiveColorPrimary: CustomColor.labelColor,
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/images/navbar-icons/transaction-active.png'),
          inactiveIcon: Image.asset('assets/images/navbar-icons/transaction.png'),
          title: 'Transaction',
          activeColorPrimary: CustomColor.menuItemColor,
          inactiveColorPrimary: CustomColor.labelColor,
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/images/navbar-icons/profile-active.png'),
          inactiveIcon: Image.asset('assets/images/navbar-icons/profile.png'),
          title: 'My Profile',
          activeColorPrimary: CustomColor.menuItemColor,
          inactiveColorPrimary: CustomColor.labelColor,
        ),
      ];
  int _initialIndex = 0;
  final List<String> _screenTitles = ['Home', 'Feeds', 'Transactions', 'My Profile'];

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 5,
        foregroundColor:
            _initialIndex == 0 || _initialIndex == 3 ? Colors.white : Colors.black,
        iconTheme: IconThemeData(
          color: _initialIndex == 0 || _initialIndex == 3 ? Colors.white : Colors.black,
        ),
        backgroundColor: _initialIndex == 0 || _initialIndex == 3
            ? CustomColor.primaryColor
            : Colors.white,
        title: ScreenTitleText(title: _screenTitles[_initialIndex]),
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
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: 70,
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
        onItemSelected: (index) {
          setState(() => _initialIndex = index);
        },
      ),
    );
  }
}
