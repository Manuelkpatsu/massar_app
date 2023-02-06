import 'package:flutter/material.dart';
import 'package:massar_app/models/cart.dart';
import 'package:massar_app/screens/main_app/messages/messages_screen.dart';
import 'package:massar_app/screens/main_app/notifications/notifications_screen.dart';
import 'package:massar_app/screens/main_app/select_payment/select_payment_screen.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/widgets/amount_text.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/screens/widgets/total_payment_text.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';
import 'package:collection/collection.dart';

import 'widgets/change_address_button.dart';
import 'widgets/delivery_address_text.dart';
import 'widgets/shipping_address_text.dart';
import 'widgets/summary_item_text.dart';
import 'widgets/summary_item_tile.dart';
import 'widgets/summary_order_text.dart';
import 'widgets/summary_order_tile.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = '/checkout';

  final List<Cart> selectedCartListItems;

  const CheckoutScreen({
    Key? key,
    required this.selectedCartListItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tax = 10.00;
    double deliveryFee = 40.00;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Checkout'),
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
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 20),
          const ShippingAddressText(),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DeliveryAddressText(
                  address:
                      'Domen Tikoro Street: 825 Baker Avenue, Dallas, Texas, Zip code 75202',
                ),
                ChangeAddressButton(onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const SummaryItemText(),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: selectedCartListItems.mapIndexed((index, item) {
                return SummaryItemTile(
                  cartItem: item,
                  divider: selectedCartListItems.length - 1 == index
                      ? const SizedBox.shrink()
                      : const Divider(
                          color: CustomColor.dividerColor,
                          height: 0,
                        ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          const SummaryOrderText(),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SummaryOrderTile(
                  title: 'Delivery Fee',
                  amount: Money.fromDouble(value: deliveryFee),
                ),
                const Divider(height: 0, color: CustomColor.dividerColor),
                SummaryOrderTile(
                  title: 'Subtotal',
                  amount: Money.fromDouble(value: getTotalPrice()),
                ),
                const Divider(height: 0, color: CustomColor.dividerColor),
                SummaryOrderTile(
                  title: 'Tax',
                  amount: Money.fromDouble(value: tax),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: IntrinsicHeight(
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: CustomColor.dividerColor, width: 0.5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TotalPaymentText(),
                  const SizedBox(height: 5),
                  AmountText(
                    amount: getTotalPrice() + deliveryFee + tax,
                  ),
                ],
              ),
              CustomButton(
                width: 180,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    SelectPaymentScreen.routeName,
                    arguments: getTotalPrice() + deliveryFee + tax,
                  );
                },
                widget: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double getTotalPrice() {
    return selectedCartListItems.fold(0, (previous, current) => previous + current.price);
  }
}
