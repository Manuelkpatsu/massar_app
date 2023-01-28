import 'package:flutter/material.dart';

import 'screens/auth/login/login_screen.dart';
import 'screens/auth/register/register_screen.dart';
import 'screens/main_app/feeds/feeds_screen.dart';
import 'screens/main_app/home/home_screen.dart';
import 'screens/main_app/main_app.dart';
import 'screens/main_app/profile/profile_screen.dart';
import 'screens/main_app/transaction/transaction_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RegisterScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case MainApp.routeName:
        return MaterialPageRoute(builder: (_) => const MainApp());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case FeedsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const FeedsScreen());
      case TransactionScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TransactionScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        );
    }
  }
}
