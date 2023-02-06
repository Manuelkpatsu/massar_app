import 'package:flutter/material.dart';

import 'models/cart.dart';
import 'models/message.dart';
import 'models/product.dart';
import 'models/transaction.dart';
import 'screens/auth/login/login_screen.dart';
import 'screens/auth/register/register_screen.dart';
import 'screens/main_app/cart/cart_screen.dart';
import 'screens/main_app/chat/chat_screen.dart';
import 'screens/main_app/checkout/checkout_screen.dart';
import 'screens/main_app/edit_profile/edit_profile_screen.dart';
import 'screens/main_app/feeds/feeds_screen.dart';
import 'screens/main_app/home/home_screen.dart';
import 'screens/main_app/main_app.dart';
import 'screens/main_app/messages/messages_screen.dart';
import 'screens/main_app/notifications/notifications_screen.dart';
import 'screens/main_app/product_detail/product_detail_screen.dart';
import 'screens/main_app/products/products_screen.dart';
import 'screens/main_app/profile/profile_screen.dart';
import 'screens/main_app/promotion/promotion_screen.dart';
import 'screens/main_app/transaction/transaction_screen.dart';
import 'screens/main_app/transaction_detail/transaction_detail_screen.dart';

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
      case ProductsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());
      case PromotionScreen.routeName:
        return MaterialPageRoute(builder: (_) => const PromotionScreen());
      case NotificationsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case EditProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case ProductDetailScreen.routeName:
        Product product = settings.arguments as Product;
        return MaterialPageRoute(builder: (_) => ProductDetailScreen(product: product));
      case CartScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case CheckoutScreen.routeName:
        List<Cart> cartItems = settings.arguments as List<Cart>;
        return MaterialPageRoute(
          builder: (_) => CheckoutScreen(selectedCartListItems: cartItems),
        );
      case MessagesScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MessagesScreen());
      case ChatScreen.routeName:
        ChatMessage chatMessage = settings.arguments as ChatMessage;
        return MaterialPageRoute(
          builder: (_) => ChatScreen(chatMessage: chatMessage),
        );
      case TransactionDetailScreen.routeName:
        Transaction transaction = settings.arguments as Transaction;
        return MaterialPageRoute(
          builder: (_) => TransactionDetailScreen(transaction: transaction),
        );
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
