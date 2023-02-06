import 'package:flutter/material.dart';
import 'package:massar_app/models/order_info.dart';
import 'package:massar_app/screens/main_app/transaction/widgets/order_info_content.dart';
import 'package:massar_app/theme/custom_color.dart';

class Helper {
  Helper._();

  static void openTransactionModalBottomSheet({
    required BuildContext context,
    required List<OrderInfo> processes,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      barrierColor: CustomColor.barrierColor.withOpacity(0.6),
      constraints: BoxConstraints.loose(
        Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.8,
        ),
      ), // <= this is set to 3/4 of screen size.
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) {
        return Stack(
          children: [
            OrderInfoContent(
              processes: processes,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: IconButton(
                splashRadius: 20,
                onPressed: () => Navigator.of(ctx).pop(),
                icon: const Icon(
                  Icons.close,
                  color: CustomColor.labelColor,
                  size: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
