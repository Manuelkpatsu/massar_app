import 'package:flutter/material.dart';
import 'package:massar_app/models/message.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/date_formatter.dart';

class MessageTile extends StatelessWidget {
  final Message message;
  final VoidCallback? onTap;

  const MessageTile({
    Key? key,
    required this.message,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              message.store.image,
              height: 45,
              width: 45,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        message.store.id,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        DateFormatter.getDateTime(message.lastMessageDate),
                        style: const TextStyle(
                          color: CustomColor.labelColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          message.currentMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: CustomColor.labelColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      message.numberOfMessages == 0
                          ? const SizedBox.shrink()
                          : Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: CustomColor.greenColor,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                message.numberOfMessages.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
