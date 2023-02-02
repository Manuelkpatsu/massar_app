import 'package:flutter/material.dart';
import 'package:massar_app/models/notification.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationTile extends StatelessWidget {
  final NotificationItem notification;
  final VoidCallback onTap;

  const NotificationTile({
    Key? key,
    required this.notification,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color orderBackgroundColor() {
      switch (notification.status) {
        case OrderStatus.success:
          return CustomColor.greenColor;
        case OrderStatus.onWay:
          return CustomColor.buttonColor;
        case OrderStatus.arrived:
          return CustomColor.redColor;
      }
    }

    String orderTitle() {
      switch (notification.status) {
        case OrderStatus.success:
          return 'Your payment was successful';
        case OrderStatus.onWay:
          return 'Your order will be delivered to address';
        case OrderStatus.arrived:
          return 'Your order has arrived';
      }
    }

    IconData orderIcon() {
      switch (notification.status) {
        case OrderStatus.success:
          return Icons.check;
        case OrderStatus.onWay:
          return Icons.local_shipping_outlined;
        case OrderStatus.arrived:
          return Icons.redeem_rounded;
      }
    }

    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: orderBackgroundColor(),
              child: Center(
                child: Icon(orderIcon(), color: Colors.white, size: 16),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          orderTitle(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            height: 1.17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        timeago.format(notification.date, allowFromNow: true),
                        style: const TextStyle(
                          fontSize: 12,
                          color: CustomColor.labelColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    notification.message,
                    style: const TextStyle(
                      fontSize: 12,
                      color: CustomColor.labelColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
