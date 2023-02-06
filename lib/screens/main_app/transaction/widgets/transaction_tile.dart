import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_date.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_price.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_name.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_thumbnail.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_status.dart';

class TransactionTile extends StatelessWidget {
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final Transaction transaction;

  const TransactionTile({
    Key? key,
    required this.onTap,
    required this.onLongPress,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              TransactionProductThumbnail(
                width: 60,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                image: transaction.image,
                id: transaction.id,
                backgroundColor: transaction.backgroundColor,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
      ),
    );
  }
}
