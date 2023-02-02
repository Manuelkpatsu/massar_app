import 'package:flutter/material.dart';
import 'package:massar_app/models/notification.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notifications';

  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<NotificationItem> notifications = [
      NotificationItem(
        id: 1,
        status: OrderStatus.success,
        message:
            'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 2, 2, 11, 19, 10),
      ),
      NotificationItem(
        id: 2,
        status: OrderStatus.arrived,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 3,
        status: OrderStatus.success,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 4,
        status: OrderStatus.onWay,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 5,
        status: OrderStatus.success,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 6,
        status: OrderStatus.arrived,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 7,
        status: OrderStatus.success,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
      NotificationItem(
        id: 8,
        status: OrderStatus.onWay,
        message:
        'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
        date: DateTime(2023, 1, 20, 11, 30, 10),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Notifications'),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(Icons.tune_rounded),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (ctx, index) {
          final NotificationItem notificationItem = notifications[index];

          return NotificationTile(
            notification: notificationItem,
            onTap: () {},
          );
        },
        separatorBuilder: (ctx, index) => Divider(
          color: CustomColor.greyColor.withOpacity(0.2),
          thickness: 1.0,
          height: 0,
        ),
        itemCount: notifications.length,
      ),
    );
  }
}
