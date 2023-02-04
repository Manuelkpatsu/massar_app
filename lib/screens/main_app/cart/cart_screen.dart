import 'package:flutter/material.dart';
import 'package:massar_app/models/cart.dart';
import 'package:massar_app/screens/main_app/notifications/notifications_screen.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/widgets/custom_badge.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/amount_text.dart';
import 'widgets/cart_tile.dart';
import 'widgets/total_payment_text.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<int> _selectedCartItems = [];
  final List<Cart> _cartListItems = [
    const Cart(
      id: 1,
      image: 'assets/images/products/iphone-13.png',
      name: 'Iphone 13 pro',
      price: 550.25,
      quantity: 1,
      backgroundColor: CustomColor.productColorNine,
    ),
    const Cart(
      id: 2,
      image: 'assets/images/products/macbook.png',
      name: 'Macbook Pro',
      price: 1500.00,
      quantity: 1,
      backgroundColor: CustomColor.productColorSeven,
    ),
    const Cart(
      id: 3,
      image: 'assets/images/products/red-dress.png',
      name: 'Red Dress',
      price: 86.00,
      quantity: 1,
      backgroundColor: CustomColor.productColorSix,
    ),
    const Cart(
      id: 4,
      image: 'assets/images/products/smart-watch.png',
      name: 'Smart Watch T80',
      price: 268.20,
      quantity: 1,
      backgroundColor: CustomColor.productColorTen,
    ),
    const Cart(
      id: 5,
      image: 'assets/images/products/nike-shoe.png',
      name: 'Sport Shoes Nike',
      price: 711.99,
      quantity: 1,
      backgroundColor: CustomColor.productColorFive,
    ),
  ];
  bool _selectAllItems = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Your Cart'),
        actions: [
          CustomBadge(
            icon: Icons.markunread_outlined,
            text: '0',
            onTap: () {},
          ),
          CustomBadge(
            icon: Icons.notifications_none_rounded,
            text: '0',
            onTap: () => Navigator.of(context).pushNamed(NotificationsScreen.routeName),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CheckboxListTile(
              dense: true,
              visualDensity: VisualDensity.compact,
              activeColor: CustomColor.greenColor,
              checkColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
              checkboxShape: RoundedRectangleBorder(
                side: const BorderSide(color: CustomColor.greyColor, width: 0.5),
                borderRadius: BorderRadius.circular(4),
              ),
              value: _selectAllItems,
              onChanged: (value) {
                setState(() {
                  if (_selectedCartItems.isEmpty) {
                    _selectAllItems = true;
                    for (var item in _cartListItems) {
                      _selectedCartItems.add(item.id);
                    }
                  } else {
                    _selectAllItems = false;
                    _selectedCartItems.clear();
                  }
                });
              },
              title: const Text(
                'Select All Items',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 15),
            ..._cartListItems.map((cartItem) {
              return CartTile(
                isSelected: _selectedCartItems.contains(cartItem.id),
                onSelected: () {
                  setState(() {
                    _selectAllItems = false;
                    if (_selectedCartItems.contains(cartItem.id)) {
                      _selectedCartItems.remove(cartItem.id);
                    } else {
                      _selectedCartItems.add(cartItem.id);
                    }
                  });
                },
                cart: cartItem,
              );
            }).toList(),
            const SizedBox(height: 20),
          ],
        ),
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
                    amount: getTotalPrice(),
                  ),
                ],
              ),
              CustomButton(
                width: 180,
                onPressed: _selectedCartItems.isEmpty ? null : () {},
                widget: Text(
                  _selectedCartItems.isEmpty
                      ? 'Buy'
                      : 'Buy (${_selectedCartItems.length} ${_selectedCartItems.length > 1 ? 'items' : 'item'})',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double getTotalPrice() {
    if (_selectedCartItems.isEmpty) {
      return 0.0;
    } else {
      final items = _cartListItems
          .toSet()
          .where((item) => _selectedCartItems.toSet().contains(item.id))
          .toList();
      return items.fold(0, (previous, current) => previous + current.price);
    }
  }
}
