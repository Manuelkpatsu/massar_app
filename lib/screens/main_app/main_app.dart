import 'package:flutter/material.dart';
import 'package:massar_app/screens/auth/login/login_screen.dart';
import 'package:massar_app/screens/main_app/cart/cart_screen.dart';
import 'package:massar_app/screens/main_app/widgets/info_tile.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/widgets/logo.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'feeds/feeds_screen.dart';
import 'home/home_screen.dart';
import 'messages/messages_screen.dart';
import 'notifications/notifications_screen.dart';
import 'products/products_screen.dart';
import 'profile/profile_screen.dart';
import 'promotion/promotion_screen.dart';
import 'transaction/transaction_screen.dart';
import 'widgets/close_drawer_button.dart';
import 'widgets/nav_tile.dart';
import 'widgets/screen_title.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main';

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

  void navigateTo(String route) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(route);
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
            onTap: () => Navigator.of(context).pushNamed(MessagesScreen.routeName),
          ),
          CustomBadge(
            icon: Icons.notifications_none_rounded,
            text: '0',
            onTap: () => Navigator.of(context).pushNamed(NotificationsScreen.routeName),
          ),
          CustomBadge(
            icon: Icons.shopping_cart_outlined,
            text: '0',
            onTap: () => Navigator.of(context).pushNamed(CartScreen.routeName),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Logo(
                        firstColor: CustomColor.primaryColor,
                        secondColor: CustomColor.buttonColor,
                        fontSize: 27,
                      ),
                      const SizedBox(height: 40),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            InfoTile(
                              title: 'Balance',
                              info: Money.fromDouble(value: 809.97),
                              infoTextColor: CustomColor.primaryColor,
                            ),
                            const SizedBox(width: 10),
                            const VerticalDivider(
                              color: CustomColor.labelColor,
                              thickness: 0.5,
                            ),
                            const SizedBox(width: 10),
                            const InfoTile(
                              title: 'My Reward Points',
                              info: '800 Points',
                              infoTextColor: CustomColor.buttonColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const CloseDrawerButton(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'Dashboard',
                    icon: Icons.home_filled,
                  ),
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'Become Seller',
                    icon: Icons.person_outline_rounded,
                  ),
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'Help',
                    icon: Icons.help_outline_rounded,
                  ),
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'Categories',
                    icon: Icons.grid_view_outlined,
                  ),
                  NavTile(
                    onPressed: () {
                      navigateTo(ProductsScreen.routeName);
                    },
                    title: 'All Products',
                    icon: Icons.shopping_bag_outlined,
                  ),
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'New Release',
                    icon: Icons.calendar_today_outlined,
                  ),
                  NavTile(
                    onPressed: () {
                      navigateTo(PromotionScreen.routeName);
                    },
                    title: 'Promotion',
                    icon: Icons.campaign_outlined,
                  ),
                  NavTile(
                    onPressed: () => Navigator.of(context).pop(),
                    title: 'Settings',
                    icon: Icons.settings_outlined,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavTile(
                onPressed: () {
                  Navigator.of(context).pop();
                  logout();
                },
                title: 'Logout',
                icon: Icons.logout,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
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

  void logout() {
    showDialog(
      context: context,
      barrierColor: CustomColor.barrierColor.withOpacity(0.6),
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          contentTextStyle: const TextStyle(
            color: CustomColor.descriptionColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.75,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                foregroundColor: CustomColor.greenColor,
              ),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                Navigator.of(ctx).pushNamedAndRemoveUntil(
                  LoginScreen.routeName,
                  (route) => false,
                );
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                foregroundColor: CustomColor.redBackgroundColor,
              ),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
