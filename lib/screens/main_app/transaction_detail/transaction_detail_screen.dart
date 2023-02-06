import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/cart/cart_screen.dart';
import 'package:massar_app/screens/main_app/messages/messages_screen.dart';
import 'package:massar_app/screens/main_app/notifications/notifications_screen.dart';
import 'package:massar_app/screens/main_app/transaction/widgets/order_info_content.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_date.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_price.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_thumbnail.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_status.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_name.dart';

class TransactionDetailScreen extends StatelessWidget {
  static const routeName = '/transaction_detail';

  final Transaction transaction;

  const TransactionDetailScreen({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Ink(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TransactionProductThumbnail(
                        height: 113,
                        width: double.infinity,
                        padding: EdgeInsets.zero,
                        image: transaction.image,
                        id: transaction.id,
                        backgroundColor: transaction.backgroundColor,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TransactionProductName(name: transaction.name),
                          const SizedBox(height: 10),
                          TransactionStatus(status: transaction.status),
                        ],
                      ),
                      const SizedBox(height: 13),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TransactionPrice(price: transaction.price),
                          TransactionDate(date: transaction.createdAt),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          transaction.status == Status.notPaid
              ? const SizedBox.shrink()
              : Expanded(
                  child: Ink(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                    child: OrderInfoContent(processes: transaction.processes),
                  ),
                ),
        ],
      ),
    );
  }
}
