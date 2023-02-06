import 'package:flutter/material.dart';
import 'package:massar_app/models/payment.dart';
import 'package:massar_app/screens/main_app/main_app.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/amount_to_pay_text.dart';
import 'widgets/order_success_info_text.dart';
import 'widgets/order_success_text.dart';
import 'widgets/payment_card_tile.dart';
import 'widgets/select_cards_text.dart';
import 'widgets/summary_text.dart';
import 'widgets/summary_total_payment_text.dart';

class SelectPaymentScreen extends StatefulWidget {
  static const routeName = '/select_payment';

  final double amount;

  const SelectPaymentScreen({Key? key, required this.amount}) : super(key: key);

  @override
  State<SelectPaymentScreen> createState() => _SelectPaymentScreenState();
}

class _SelectPaymentScreenState extends State<SelectPaymentScreen> {
  final List<Payment> _payments = const [
    Payment(
      id: 1,
      paymentGateWay: PaymentGateWay.masterCard,
      name: 'Alexander Noble',
      number: 2434567890122206,
    ),
    Payment(
      id: 2,
      paymentGateWay: PaymentGateWay.paypal,
      name: 'Robert Chan',
      number: 6234567890124602,
    ),
    Payment(
      id: 3,
      paymentGateWay: PaymentGateWay.visaCard,
      name: 'Emmanuel Ahuno',
      number: 5534567890124312,
    ),
  ];
  int _selectedPayment = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Select Payment'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const SummaryText(),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SummaryTotalPaymentText(),
                  const SizedBox(height: 8),
                  AmountToPayText(amount: widget.amount),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const SelectCardsText(),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _payments.map((payment) {
                return PaymentCardTile(
                  payment: payment,
                  onTap: () {
                    setState(() => _selectedPayment = payment.id);
                  },
                  isSelected: _selectedPayment == payment.id,
                );
              }).toList(),
            ),
            const SizedBox(height: 40),
            CustomButton(
              width: double.infinity,
              onPressed: () => openPaymentSuccessDialog(),
              widget: const Text('Pay Now'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void openPaymentSuccessDialog() {
    showDialog(
      context: context,
      barrierColor: CustomColor.barrierColor.withOpacity(0.6),
      builder: (ctx) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          content: IntrinsicHeight(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/order-success.png',
                  width: 108,
                  height: 108,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 40),
                const OrderSuccessText(),
                const SizedBox(height: 25),
                const OrderSuccessInfoText(),
                const SizedBox(height: 35),
                CustomButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      MainApp.routeName,
                      (route) => false,
                    );
                  },
                  widget: const Text('Ok'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
