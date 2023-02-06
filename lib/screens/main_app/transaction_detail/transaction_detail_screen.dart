import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:massar_app/models/order_info.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/screens/main_app/cart/cart_screen.dart';
import 'package:massar_app/screens/main_app/messages/messages_screen.dart';
import 'package:massar_app/screens/main_app/notifications/notifications_screen.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_date.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_price.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_thumbnail.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_status.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/main_app/widgets/transaction_product_name.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:timelines/timelines.dart';

import 'widgets/shipping_status_text.dart';
import 'widgets/transaction_info_tile.dart';

class TransactionDetailScreen extends StatelessWidget {
  static const routeName = '/transaction_detail';

  final Transaction transaction;

  const TransactionDetailScreen({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<OrderInfo> processes = [
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
    ];

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
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          const TransactionInfoTile(
                            title: 'Receipt Number',
                            info: '008854228765',
                          ),
                          const SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: TransactionInfoTile(
                                  title: 'Delivery date',
                                  info: DateFormat('dd-MM-yyyy')
                                      .format(DateTime(2023, 1, 28)),
                                ),
                              ),
                              const Expanded(
                                child: TransactionInfoTile(
                                  title: 'Service Code',
                                  info: '43312',
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: TransactionInfoTile(
                                  title: 'Seller',
                                  info: 'Gaplok Store',
                                ),
                              ),
                              Expanded(
                                child: TransactionInfoTile(
                                  title: 'Estimated Arrival',
                                  info: '26 - 28 January 2023',
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(color: CustomColor.greyColor, height: 0),
                          const SizedBox(height: 20),
                          const ShippingStatusText(),
                          const SizedBox(height: 30),
                          FixedTimeline.tileBuilder(
                            theme: TimelineThemeData(
                              nodePosition: 0,
                              indicatorTheme: const IndicatorThemeData(
                                position: 0,
                                size: 14,
                              ),
                            ),
                            builder: TimelineTileBuilder.connected(
                              connectionDirection: ConnectionDirection.before,
                              itemCount: processes.length,
                              contentsBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat('EEEE, dd MMMM yyyy')
                                            .format(processes[index].date),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        processes[index].deliveryMessage,
                                        style: const TextStyle(
                                          color: CustomColor.labelColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              indicatorBuilder: (_, index) {
                                if (processes[index].isCompleted) {
                                  return const DotIndicator(
                                    color: CustomColor.greenBorderColor,
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  );
                                } else {
                                  return const OutlinedDotIndicator(
                                    borderWidth: 1,
                                    color: CustomColor.labelColor,
                                  );
                                }
                              },
                              connectorBuilder: (_, index, ___) =>
                                  const DashedLineConnector(
                                color: Color(0xffdde7ec),
                                thickness: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
