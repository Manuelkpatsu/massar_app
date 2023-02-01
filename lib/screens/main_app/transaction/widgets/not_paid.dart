import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'transaction_tile.dart';

class NotPaid extends StatelessWidget {
  const NotPaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = [
      Transaction(
        id: 4,
        image: 'assets/images/products/samsung-flip.png',
        name: 'Samsung z flip',
        price: 711.99,
        backgroundColor: CustomColor.productColorTwo,
        status: Status.notPaid,
        createdAt: DateTime(2023, 1, 4),
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        final Transaction transaction = transactions[index];

        return TransactionTile(
          onTap: () {},
          onLongPress: () {},
          transaction: transaction,
        );
      },
    );
  }
}
