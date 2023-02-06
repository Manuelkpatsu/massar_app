import 'package:flutter/material.dart';
import 'package:massar_app/models/transaction.dart';
import 'package:massar_app/theme/custom_color.dart';

class TransactionStatus extends StatelessWidget {
  final Status status;

  const TransactionStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusBackgroundColor() {
      switch (status) {
        case Status.shipping:
          return CustomColor.greenColor;
        case Status.notPaid:
          return CustomColor.redColor;
        case Status.success:
          return CustomColor.greenColor.withOpacity(0.2);
      }
    }

    Color statusTextColor() {
      switch (status) {
        case Status.shipping:
        case Status.notPaid:
          return Colors.white;
        case Status.success:
          return CustomColor.greenColor;
      }
    }

    BorderRadius statusBorderRadius() {
      switch (status) {
        case Status.shipping:
        case Status.notPaid:
          return BorderRadius.circular(5);
        case Status.success:
          return BorderRadius.circular(55);
      }
    }

    return Ink(
      height: 22,
      width: 63,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: statusBackgroundColor(),
        borderRadius: statusBorderRadius(),
      ),
      child: Center(
        child: Text(
          status.id,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: statusTextColor(),
          ),
        ),
      ),
    );
  }
}
