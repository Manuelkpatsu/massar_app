import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:massar_app/models/order_info.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:timelines/timelines.dart';

import 'shipping_status_text.dart';
import 'transaction_info_tile.dart';

class OrderInfoContent extends StatelessWidget {
  final List<OrderInfo> processes;
  final EdgeInsetsGeometry padding;

  const OrderInfoContent({
    Key? key,
    required this.processes,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: padding,
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
                  info: DateFormat('dd-MM-yyyy').format(DateTime(2023, 1, 28)),
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
                        DateFormat('EEEE, dd MMMM yyyy').format(processes[index].date),
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
              connectorBuilder: (_, index, ___) => const DashedLineConnector(
                color: Color(0xffdde7ec),
                thickness: 1,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
