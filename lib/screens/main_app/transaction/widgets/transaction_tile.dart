import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

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
    Color statusBackgroundColor() {
      switch (transaction.status) {
        case Status.shipping:
          return CustomColor.greenColor;
        case Status.notPaid:
          return CustomColor.redColor;
        case Status.success:
          return CustomColor.greenColor.withOpacity(0.2);
      }
    }

    Color statusTextColor() {
      switch (transaction.status) {
        case Status.shipping:
        case Status.notPaid:
          return Colors.white;
        case Status.success:
          return CustomColor.greenColor;
      }
    }

    BorderRadius statusBorderRadius() {
      switch (transaction.status) {
        case Status.shipping:
        case Status.notPaid:
          return BorderRadius.circular(5);
        case Status.success:
          return BorderRadius.circular(55);
      }
    }

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
              Ink(
                width: 60,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: transaction.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Hero(
                    tag: 'Transaction-${transaction.id}',
                    child: Image.asset(
                      transaction.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            transaction.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Ink(
                          height: 22,
                          width: 63,
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                            color: statusBackgroundColor(),
                            borderRadius: statusBorderRadius(),
                          ),
                          child: Center(
                            child: Text(
                              transaction.status.id,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: statusTextColor(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Money.fromDouble(value: transaction.price),
                          style: const TextStyle(
                            color: CustomColor.greenBorderColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMMd().format(transaction.createdAt),
                          style: const TextStyle(
                            color: CustomColor.labelColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
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
