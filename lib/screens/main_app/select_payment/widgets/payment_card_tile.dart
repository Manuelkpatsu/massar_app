import 'package:flutter/material.dart';
import 'package:massar_app/models/payment.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'card_info.dart';
import 'card_info_title.dart';

class PaymentCardTile extends StatelessWidget {
  final Payment payment;
  final VoidCallback? onTap;
  final bool isSelected;

  const PaymentCardTile({
    Key? key,
    required this.payment,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String paymentGateWayIcon() {
      switch (payment.paymentGateWay) {
        case PaymentGateWay.paypal:
          return 'assets/images/payments/paypal.png';
        case PaymentGateWay.masterCard:
          return 'assets/images/payments/master-card.png';
        case PaymentGateWay.visaCard:
          return 'assets/images/payments/visa.png';
      }
    }
    String formattedNumber =
        payment.number.toString().replaceAll(RegExp(r'(?<=.{2})\d(?=.{4})'), '*');
    String cardNumber = formattedNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? CustomColor.greenColor.withOpacity(0.1) : Colors.white,
            border: isSelected
                ? Border.all(
                    color: CustomColor.textFieldBorderColor,
                    width: 0.5,
                  )
                : null,
          ),
          child: Row(
            children: [
              Image.asset(
                paymentGateWayIcon(),
                height: 15,
                width: 34,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardInfoTitle(title: 'Card Number'),
                    const SizedBox(height: 5),
                    CardInfo(info: cardNumber),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardInfoTitle(title: 'Card Holder'),
                    const SizedBox(height: 5),
                    CardInfo(info: payment.name.split(" ").elementAt(0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
