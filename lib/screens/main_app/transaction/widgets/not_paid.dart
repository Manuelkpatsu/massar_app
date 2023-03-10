import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/transaction_detail/transaction_detail_screen.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
        processes: const [],
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        final Transaction transaction = transactions[index];

        return TransactionTile(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: TransactionDetailScreen(transaction: transaction),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          onLongPress: null,
          transaction: transaction,
        );
      },
    );
  }
}
