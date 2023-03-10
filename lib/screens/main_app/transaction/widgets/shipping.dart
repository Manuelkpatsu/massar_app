import 'package:flutter/material.dart';
import 'package:massar_app/models/order_info.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/transaction_detail/transaction_detail_screen.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/helper.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
        processes: [
          OrderInfo(
              id: 1,
              date: DateTime(2023, 1, 26, 10, 30, 20),
              deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
              isCompleted: true),
          OrderInfo(
            id: 2,
            date: DateTime(2023, 1, 26, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 3,
            date: DateTime(2023, 1, 27, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 4,
            date: DateTime(2023, 1, 28, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
        ],
      ),
      Transaction(
        id: 3,
        image: 'assets/images/products/imac.png',
        name: 'Imac 27 Inch 5k',
        price: 999.99,
        backgroundColor: CustomColor.productColorOne,
        status: Status.shipping,
        createdAt: DateTime(2023, 1, 4),
        processes: [
          OrderInfo(
              id: 1,
              date: DateTime(2023, 1, 26, 10, 30, 20),
              deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
              isCompleted: true),
          OrderInfo(
            id: 2,
            date: DateTime(2023, 1, 26, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 3,
            date: DateTime(2023, 1, 27, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 4,
            date: DateTime(2023, 1, 28, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
        ],
      ),
      Transaction(
        id: 6,
        image: 'assets/images/products/macbook.png',
        name: 'Macbook Pro',
        price: 1500.00,
        backgroundColor: CustomColor.productColorSeven,
        status: Status.shipping,
        createdAt: DateTime(2023, 1, 4),
        processes: [
          OrderInfo(
              id: 1,
              date: DateTime(2023, 1, 26, 10, 30, 20),
              deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
              isCompleted: true),
          OrderInfo(
            id: 2,
            date: DateTime(2023, 1, 26, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 3,
            date: DateTime(2023, 1, 27, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
          OrderInfo(
            id: 4,
            date: DateTime(2023, 1, 28, 10, 30, 20),
            deliveryMessage: 'Packages out of Bandung [Bandung Sortation]',
            isCompleted: false,
          ),
        ],
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
          onLongPress: () {
            Helper.openTransactionModalBottomSheet(
              context: context,
              processes: transaction.processes,
            );
          },
          transaction: transaction,
        );
      },
    );
  }
}
