import 'package:flutter/material.dart';
import 'package:massar_app/models/message.dart';
import 'package:massar_app/models/product.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/message_tile.dart';

class MessagesScreen extends StatelessWidget {
  static const routeName = '/messages';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Message> messages = [
      Message(
        id: 1,
        store: Store.appleStore,
        numberOfMessages: 5,
        lastMessageDate: DateTime(2023, 2, 4, 22, 48, 20),
        currentMessage: 'This product is still available and are you still interested?',
      ),
      Message(
        id: 2,
        store: Store.amazonStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 2, 4, 12, 30, 00),
        currentMessage: 'I will be getting new stock next week.',
      ),
      Message(
        id: 3,
        store: Store.gucciStore,
        numberOfMessages: 5,
        lastMessageDate: DateTime(2023, 2, 3, 13, 30, 20),
        currentMessage:
            'I have received your order. Please let me know when you will be available so it can be shipped.',
      ),
      Message(
        id: 4,
        store: Store.samsungStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 2, 3, 10, 30, 10),
        currentMessage: 'This product is still available and are you still interested?',
      ),
      Message(
        id: 5,
        store: Store.uniqloStore,
        numberOfMessages: 3,
        lastMessageDate: DateTime(2023, 2, 1, 10, 30, 20),
        currentMessage:
            'We are currently running promotions on almost all our products. Please take advantage of that',
      ),
      Message(
        id: 6,
        store: Store.nikeStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 1, 28, 10, 30, 40),
        currentMessage: 'We are off on Sundays. Kindly take note.',
      ),
      Message(
        id: 7,
        store: Store.xiaomiStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 1, 18, 8, 50, 20),
        currentMessage: 'We are off on Sundays. Kindly take note.',
      ),
      Message(
        id: 8,
        store: Store.diorStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 1, 15, 15, 30, 10),
        currentMessage: 'This product is still available and are you still interested?',
      ),
      Message(
        id: 9,
        store: Store.filaStore,
        numberOfMessages: 0,
        lastMessageDate: DateTime(2023, 1, 4, 9, 30, 20),
        currentMessage: 'We are off on Sundays. Kindly take note.',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Chat'),
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
          final Message message = messages[index];

          return MessageTile(
            message: message,
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: CustomColor.dividerColor,
          height: 0,
        ),
        itemCount: messages.length,
      ),
    );
  }
}
