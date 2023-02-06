import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/transaction_detail/transaction_detail_screen.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'transaction_tile.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({Key? key}) : super(key: key);

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
        id: 2,
        image: 'assets/images/products/eyeglass.png',
        name: 'Eyeglasses Gucci',
        price: 211.00,
        backgroundColor: CustomColor.productColorFour,
        status: Status.success,
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
        id: 4,
        image: 'assets/images/products/samsung-flip.png',
        name: 'Samsung z flip',
        price: 711.99,
        backgroundColor: CustomColor.productColorTwo,
        status: Status.notPaid,
        createdAt: DateTime(2023, 1, 4),
      ),
      Transaction(
        id: 5,
        image: 'assets/images/products/iphone-13.png',
        name: 'Iphone 13 pro',
        price: 550.25,
        backgroundColor: CustomColor.productColorNine,
        status: Status.success,
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
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: TransactionDetailScreen(transaction: transaction),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          onLongPress: () {},
          transaction: transaction,
        );
      },
    );
  }
}
