import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'transaction_tile.dart';

class Shipping extends StatelessWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = [
      Transaction(
        id: 1,
        image: 'assets/images/products/smart-watch.png',
        name: 'Smart Watch T80',
        price: 268.20,
        backgroundColor: CustomColor.productColorTen,
        status: Status.shipping,
        createdAt: DateTime(2023, 1, 4),
      ),
      Transaction(
        id: 3,
        image: 'assets/images/products/imac.png',
        name: 'Imac 27 Inch 5k',
        price: 999.99,
        backgroundColor: CustomColor.productColorOne,
        status: Status.shipping,
        createdAt: DateTime(2023, 1, 4),
      ),
      Transaction(
        id: 6,
        image: 'assets/images/products/macbook.png',
        name: 'Macbook Pro',
        price: 1500.00,
        backgroundColor: CustomColor.productColorSeven,
        status: Status.shipping,
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
